import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:ihar_flutter/core/modals/CommentsAllModal.dart';
import 'package:ihar_flutter/core/modals/postModal.dart';
import 'package:ihar_flutter/core/requests/postRequests.dart';
import 'package:ihar_flutter/features/common/loadingAnimation.dart';
import 'package:ihar_flutter/features/common/snakbar.dart';
import 'package:ihar_flutter/features/common/userAvatarWidget.dart';
import 'package:octo_image/octo_image.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../core/firebase_classes/firebase_auth.dart';
import '../../../core/injection.dart';
import '../../../core/modals/likePostModal.dart';
import '../../../core/requests/likesRequests.dart';
import '../../feed/screens/FeedTiles.dart';
import '../bloc/comments_bloc/comments_bloc.dart';

class CommentsScreen extends StatelessWidget {
  CommentsScreen({Key? key, required this.post}) : super(key: key);
  PostModals post;
  String currentUserUid = getIt<AppAuth>().firebaseAuthInstance.currentUser!.uid;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return Scaffold(
        body: BlocProvider<CommentsBloc>(
          create: (context) => getIt<CommentsBloc>()..add(CommentsEvent.fetchComments(post: post)),
          child: Stack(
            children: [
              SafeArea(
                child: NestedScrollView(
                  headerSliverBuilder: (context, innerBoxIsScrolled) {
                    return [
                      SliverAppBar(
                        pinned: true,
                        stretch: false,
                        // onStretchTrigger: () async {
                        //   post =
                        //       await PostsRequests.getPostForUser(getIt<Dio>(), postId: post.id!, userId: currentUserUid)
                        //           .catchError((e) {
                        //     Navigator.of(context).pop();
                        //   });
                        //     BlocProvider.of<CommentsBloc>(context).add(CommentsEvent.fetchComments(post: post));
                        // },
                        snap: false,
                        floating: true,

                        leading: IconButton(
                            icon: const Icon(
                              Icons.keyboard_backspace_rounded,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            }),
                        backgroundColor: Colors.white,
                        primary: true,
                        title: const Text("Post", style: TextStyle(color: Colors.black54)),
                      ),
                      SliverList(
                        delegate: SliverChildListDelegate(
                          [
                            Row(
                              children: [
                                const SizedBox(width: 10, height: 45),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed("/home/user", arguments: [post.postFrom!, getIt<AppAuth>()]);
                                  },
                                  child: AppUserAvatar(
                                    size: 40,
                                    userModals: post.postFrom!,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Text("${post.postFrom!.firstName!} ${post.postFrom!.lastName}",
                                    style: TextStyle(fontWeight: FontWeight.bold)),
                                Expanded(child: Container()),
                                PopupMenuButton(itemBuilder: (context) {
                                  return [
                                    PopupMenuItem(child: Text("share")),
                                    PopupMenuItem(child: Text("link")),
                                    PopupMenuItem(child: Text("report")),
                                  ];
                                }),
                                const SizedBox(width: 10),
                              ],
                            ),
                            if (post.postPhotoLink != null && post.postPhotoLink != "")
                              OctoImage(
                                image: CachedNetworkImageProvider(post.postPhotoLink!),
                                progressIndicatorBuilder: (context, progress) {
                                  double value = 0;
                                  if (progress != null && progress.expectedTotalBytes != null) {
                                    value = progress.cumulativeBytesLoaded / (progress.expectedTotalBytes!);
                                  }
                                  return Container(
                                    width: double.infinity,
                                    child: Center(
                                      child: CircularProgressIndicator(
                                        value: value,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            Row(
                              children: [
                                const SizedBox(width: 10, height: 45),
                                // _Likebutton(),
                                Like(
                                    onLikeButtonPressed: (b) async {
                                      post.liked = !post.liked;
                                      final l = await LikesRequests.triggerLike(getIt<Dio>(),
                                          likePostModal: LikePostModal(likedBy: currentUserUid, postId: post.id!));
                                      // onLikeButtonPressed(b);
                                    },
                                    isLiked: post.liked),
                                IconButton(
                                    onPressed: () {
                                      // onLikeButtonPressed(true);
                                    },
                                    icon: const Icon(Icons.send, color: Colors.black54)),
                              ],
                            ),
                            Row(
                              children: [
                                const SizedBox(width: 20, height: 20),
                                Text(
                                  "${post.likes} likes",
                                  style: const TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            if (post.message != null)
                              Row(
                                children: [
                                  const SizedBox(width: 20, height: 20),
                                  Expanded(
                                    child: Text(post.message!),
                                  ),
                                  const SizedBox(width: 20, height: 20),
                                ],
                              ),
                            // const SizedBox(height: 70),
                          ],
                        ),
                      ),
                      SliverPinnedHeader(
                        child: Container(
                          color: Colors.white,
                          child: Row(
                            children: const [
                              SizedBox(width: 25, height: 50),
                              Text("Comments"),
                            ],
                          ),
                        ),
                      ),
                    ];
                  },
                  // body: _BottomActionBar(
                  //   controller: controller,
                  //   onCommentSEndButtonTap: () async {
                  //     BlocProvider.of<CommentsBloc>(context).add(CommentsEvent.postComment(
                  //         commment: CommentModal(message: controller.text, postId: post.id!, userId: currentUserUid)));
                  //   },
                  // ),

                  body: BlocConsumer<CommentsBloc, CommentsState>(
                    listener: (context, state) {
                      state.mapOrNull(onError: (s) {
                        ScaffoldMessenger.of(context).showSnackBar(AppSnackBars.withText(s.message));
                      });
                    },
                    builder: (context, state) {
                      return state.map(
                          loadingComments: (s) => const SizedBox(height: 100, child: LoadingAnimation()),
                          completed: (s) => CommentListWidget(
                              post: post, comments: s.comments, commentslength: s.noOfComments, showPostingLoader: 0),
                          postingComments: (s) => CommentListWidget(
                              post: post, comments: s.comments, commentslength: s.noOfComments, showPostingLoader: 1),
                          onError: (s) => Container());
                    },
                  ),
                ),
              ),
              Builder(builder: (context) {
                return _BottomActionBar(
                  controller: controller,
                  onCommentSEndButtonTap: () async {
                    BlocProvider.of<CommentsBloc>(context).add(CommentsEvent.postComment(
                        commment: CommentModal(message: controller.text, postId: post.id!, userId: currentUserUid)));
                  },
                );
              }),
            ],
          ),
        ),
      );
    });
  }
}

class CommentListWidget extends StatelessWidget {
  const CommentListWidget({
    Key? key,
    required this.post,
    required this.comments,
    required this.commentslength,
    required this.showPostingLoader,
  }) : super(key: key);

  final PostModals post;
  final List<CommentModal> comments;
  final int commentslength;
  final int showPostingLoader;

  @override
  Widget build(BuildContext context) {
    if (commentslength == 0 && showPostingLoader == false) {
      return Container();
    }
    return RefreshIndicator(
      onRefresh: () async {
        print("refreshed");
        BlocProvider.of<CommentsBloc>(context).add(CommentsEvent.fetchComments(post: post));
      },
      child: ListView.builder(
          itemCount: commentslength + showPostingLoader + 1,
          itemBuilder: (context, index) {
            if (commentslength + showPostingLoader - 1 == index && showPostingLoader == 1) {
              return const SizedBox(height: 100, child: LoadingAnimation());
            } else if (commentslength + showPostingLoader == index) {
              return const SizedBox(height: 150);
            }

            return Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(width: 10, height: 5),
                      InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed("/home/user", arguments: [comments[index].commentFrom!, getIt<AppAuth>()]);
                          },
                          child: AppUserAvatar(userModals: comments[index].commentFrom!, size: 30)),
                      const SizedBox(width: 20),
                      Text("${comments[index].commentFrom!.firstName!} ${comments[index].commentFrom!.lastName}",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Row(
                  children: [
                    const SizedBox(width: 60, height: 20),
                    Expanded(
                        child: Text(
                      comments[index].message,
                      textAlign: TextAlign.justify,
                    )),
                    const SizedBox(width: 20, height: 20),
                  ],
                ),
                const SizedBox(width: 10, height: 5),
              ],
            ));
          }),
    );
  }
}

class _BottomActionBar extends StatelessWidget {
  const _BottomActionBar({Key? key, required this.controller, required this.onCommentSEndButtonTap}) : super(key: key);
  final TextEditingController controller;
  final Future<void> Function() onCommentSEndButtonTap;
  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        child: Container(
          color: Colors.grey[50],
          width: Device.width,
          padding: EdgeInsets.all(8),

          child: TextField(
            controller: controller,
            // focusNode: FocusNode()..requestFocus(),
            textInputAction: TextInputAction.newline,
            // autofocus: true,
            decoration: InputDecoration(
                // focusColor: Colors.pink,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                suffixIcon: InkWell(
                    onTap: () async {
                      await onCommentSEndButtonTap();
                      controller.text = "";
                    },
                    child: Icon(
                      Icons.send,
                      color: Colors.grey[700],
                    )),

                // icon: Icon(Icons.send),
                contentPadding: EdgeInsets.fromLTRB(12, 5, 12, 5),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                )),
          ),
          // child: Row(
          //   children: [
          //     Expanded(
          //       child: TextField(
          //         controller: controller,

          //         // textInputAction: TextInputAction.send,
          //         decoration: InputDecoration(
          //             suffixIcon: Icon(Icons.send),
          //             // icon: Icon(Icons.send),
          //             contentPadding: EdgeInsets.fromLTRB(12, 5, 12, 5),
          //             border: OutlineInputBorder(
          //               borderRadius: BorderRadius.circular(15),
          //             )),
          //       ),
          //     ),
          //     // Expanded(child: Container()),
          //     TextButton(
          //         onPressed: () {},
          //         child: const Icon(
          //           Icons.send,
          //           color: Colors.black,
          //         ))
          //   ],
          // ),
        ));
  }
}
