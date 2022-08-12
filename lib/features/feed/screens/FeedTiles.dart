// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ihar_flutter/core/injection.dart';
import 'package:ihar_flutter/core/modals/postModal.dart';
import 'package:ihar_flutter/features/common/loadingAnimation.dart';
import 'package:ihar_flutter/features/common/snakbar.dart';
import 'package:ihar_flutter/features/common/userAvatarWidget.dart';
import 'package:ihar_flutter/features/feed/bloc/feed_bloc/feed_bloc.dart';
import 'package:octo_image/octo_image.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/firebase_classes/firebase_auth.dart';
import '../../../core/modals/likePostModal.dart';
import '../../../core/requests/likesRequests.dart';

class FeedTiles extends StatefulWidget {
  const FeedTiles({Key? key, required this.scrollController}) : super(key: key);
  final ScrollController scrollController;
  @override
  State<FeedTiles> createState() => _FeedTilesState();
}

class _FeedTilesState extends State<FeedTiles> {
  bool isLoading = true;
  bool lastLoading = true;
  bool blocEventinitiated = true;
  // FeedBloc bloc = getIt<FeedBloc>();
  @override
  void initState() {
    super.initState();
    // widget.scrollController.addListener(_getMorePostsListner);
    widget.scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedBloc, FeedState>(
      builder: (context, state) {
        feedEventStarted = false;
        return state.map(
            loadingAnimation: (s) => LoadingAnimation(),
            loadingMore: (s) => _PostListView(
                feedList: s.posts, showLoader: true, scrollController: widget.scrollController, onRefresh: onRefresh),
            completed: (s) => _PostListView(
                feedList: s.posts, showLoader: true, scrollController: widget.scrollController, onRefresh: onRefresh),
            hasError: (s) => _PostListView(
                feedList: s.posts, showLoader: false, scrollController: widget.scrollController, onRefresh: onRefresh),
            hasReachedMax: (s) {
              // widget.scrollController.removeListener(_onScroll);
              return _PostListView(
                  feedList: s.posts,
                  showLoader: false,
                  scrollController: widget.scrollController,
                  onRefresh: onRefresh);
            });
      },
    );
  }

  Future<void> onRefresh() async {
    print("refresed");
    BlocProvider.of<FeedBloc>(context).add(FeedEvent.getPosts(isRefreshed: true));
  }

  bool feedEventStarted = false;
  void _onScroll() {
    if (!feedEventStarted && _isBottom) {
      feedEventStarted = true;
      context.read<FeedBloc>().add(FeedEvent.getPosts());
    }
  }

  bool get _isBottom {
    print(widget.scrollController.offset);
    if (!widget.scrollController.hasClients) return false;
    final maxScroll = widget.scrollController.position.maxScrollExtent;
    final currentScroll = widget.scrollController.offset;
    return currentScroll >= (maxScroll);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}

class _PostListView extends StatelessWidget {
  _PostListView({
    Key? key,
    required this.showLoader,
    required this.feedList,
    required this.scrollController,
    required this.onRefresh,
  }) : super(key: key);

  final bool showLoader;
  final List<PostModals> feedList;
  final ScrollController scrollController;
  final Future<void> Function() onRefresh;
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await onRefresh();
      },
      child: ListView.builder(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: (Device.width < 761)
              ? EdgeInsets.only(top: 70)
              : EdgeInsets.only(top: 70, left: (Device.width - 760) / 2, right: (Device.width) / 2 + 20),
          itemCount: (showLoader) ? feedList.length + 1 : feedList.length,
          controller: scrollController,
          itemBuilder: (context, index) {
            if (showLoader && index == feedList.length) {
              // context.read<FeedBloc>().add(FeedEvent.getPosts());
              return LinearProgressIndicator();
            }
            return MobileFeedTiles(
                post: feedList[index],
                onLikeButtonPressed: (bool liked) async {
                  feedList[index].liked = !feedList[index].liked;
                  final l = await LikesRequests.triggerLike(getIt<Dio>(),
                      likePostModal: LikePostModal(
                          likedBy: getIt<AppAuth>().firebaseAuthInstance.currentUser!.uid,
                          postId: feedList[index].id!));
                  return l;
                },
                onProfileOpen: () {},
                onCommentsopen: () async {
                  await Navigator.of(context).pushNamed("/home/postComments", arguments: feedList[index]);
                },
                onShareButtonPressed: () {});
          }),
    );
  }

  bool feedEventStarted = false;
  void _onScroll(context) {
    if (!feedEventStarted && _isBottom) {
      feedEventStarted = true;
      context.read<FeedBloc>().add(FeedEvent.getPosts());
    }
  }

  bool get _isBottom {
    if (!scrollController.hasClients) return false;
    final maxScroll = scrollController.position.maxScrollExtent;
    final currentScroll = scrollController.offset;
    return currentScroll >= (maxScroll);
  }
}

class MobileFeedTiles extends StatelessWidget {
  MobileFeedTiles({
    Key? key,
    required this.post,
    required this.onLikeButtonPressed,
    required this.onProfileOpen,
    required this.onCommentsopen,
    required this.onShareButtonPressed,
    this.showUser = true,
  }) : super(key: key);
  PostModals post;
  bool showUser;
  final Future<bool> Function(bool liked) onLikeButtonPressed;
  final void Function() onProfileOpen;
  final Future<void> Function() onCommentsopen;
  final void Function() onShareButtonPressed;

  //  final VoidCallback callback(int);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (showUser)
            Row(
              children: [
                const SizedBox(width: 10, height: 45),
                if (post.postFrom!.profilePhotoLink == "")
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Theme.of(context).backgroundColor,
                  ),
                if (post.postFrom!.profilePhotoLink != "")
                  InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed("/home/user", arguments: [post.postFrom!, getIt<AppAuth>()]);
                      },
                      child: AppUserAvatar(userModals: post.postFrom!, size: 40)),
                const SizedBox(width: 10),
                Text("${post.postFrom!.firstName!} ${post.postFrom!.lastName}",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Expanded(child: Container()),
                menu(),
                const SizedBox(width: 10),
              ],
            ),
          // Image.network(
          //   post.post_photo_link,
          //   // width: double.infinity,
          //   fit: BoxFit.fitWidth,
          // ),

          // OctoImage(
          //   image: CachedNetworkImageProvider(post.post_photo_link),
          //   placeholderBuilder: OctoPlaceholder.blurHash('LEHV6nWB2yk8pyo0adR*.7kCMdnj', fit: BoxFit.fitWidth),
          //   errorBuilder: OctoError.icon(color: Colors.red),
          //   fit: BoxFit.cover,
          // ),
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
                    child: Container(
                      height: 100,
                      child: Center(
                        child: CircularProgressIndicator(
                          value: value,
                        ),
                      ),
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
                  onLikeButtonPressed: (b) {
                    onLikeButtonPressed(b);
                  },
                  isLiked: post.liked),
              IconButton(
                  onPressed: () async {
                    await onCommentsopen();
                  },
                  icon: const Icon(Icons.comment, color: Colors.black54)),
              IconButton(
                  onPressed: () {
                    // onLikeButtonPressed(true);
                  },
                  icon: const Icon(Icons.send, color: Colors.black54)),
              Expanded(child: Container()),
              if (!showUser) menu(),
              const SizedBox(width: 10),
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
          Row(
            children: [
              const SizedBox(width: 20, height: 20),
              Expanded(
                child: AutoSizeText(
                  " likes adsfsdf sdfsdfdsf skasjnf sfjbfs fgubdg gn dgungng gg di gdib  bdvd vdk vv div  " * 5,
                  maxLines: 5,
                  textAlign: TextAlign.justify,
                  // style: TextStyle(),
                  minFontSize: 15,
                  overflowReplacement: Column(
                    // This widget will be replaced.
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        " Hello dddd\n adsfsdf\n sdfsdfdsf skasjnf sfjbfs \nfgubdg gn dgungng gg di gdib  bdvd vdk vv div  " *
                            5,
                        maxLines: 5,
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 5),
                      InkWell(
                        onTap: onCommentsopen,
                        child: const Text(
                          "Show more",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // ParagraphBuilder(ParagraphStyle())
              // Expanded(
              //   child: Text(
              //     maxLines: 5,
              //     overflow: TextOverflow.ellipsis,
              //     " likes adsfsdf sdfsdfdsf skasjnf sfjbfs fgubdg gn dgungng gg di gdib  bdvd vdk vv div  " * 4,

              //     style: const TextStyle(fontWeight: FontWeight.bold),
              //   ),
              // ),
              const SizedBox(width: 20, height: 20),
            ],
          ),
          const SizedBox(height: 10),
          // PlayOneShotAnimation(post: post, onPressed: onLikeButtonPressed),
        ],
      ),
    );
  }

  PopupMenuButton<dynamic> menu() {
    return PopupMenuButton(itemBuilder: (context) {
      return [
        PopupMenuItem(child: Text("share")),
        PopupMenuItem(child: Text("link")),
        PopupMenuItem(child: Text("report")),
      ];
    });
  }
}

class _TabletFeedtile extends StatelessWidget {
  const _TabletFeedtile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      color: Colors.amber,
      height: 660,
    );
  }
}

class Like extends StatefulWidget {
  Like({Key? key, required this.onLikeButtonPressed, required this.isLiked}) : super(key: key);
  final Function(bool) onLikeButtonPressed;
  bool isLiked;

  @override
  State<Like> createState() => _LikeState(isLiked);
}

class _LikeState extends State<Like> {
  _LikeState(this.isLiked);
  bool isLiked;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          widget.onLikeButtonPressed(widget.isLiked);
          setState(() {
            isLiked = !isLiked;
          });
        },
        icon: Icon(((isLiked) ? Icons.favorite : Icons.favorite_border),
            color: (isLiked) ? Colors.redAccent : Colors.grey[850]));
  }
}
