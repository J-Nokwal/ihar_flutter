// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ihar_flutter/core/firebase_classes/firebase_auth.dart';
import 'package:ihar_flutter/core/injection.dart';
import 'package:ihar_flutter/core/modals/postModal.dart';
import 'package:ihar_flutter/core/modals/userModal.dart';
import 'package:ihar_flutter/features/common/loadingAnimation.dart';
import 'package:ihar_flutter/features/common/snakbar.dart';
import 'package:ihar_flutter/features/feed/screens/FeedTiles.dart';
import 'package:octo_image/octo_image.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../user_screen_bloc/user_screen_bloc.dart';

class UserScreen extends StatefulWidget {
  UserScreen({Key? key, required this.user, required this.appAuth}) : super(key: key) {
    ownProfile = appAuth.firebaseAuthInstance.currentUser!.uid == user.userId;
  }
  bool ownProfile = false;
  final UserModals user;
  final AppAuth appAuth;

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> with SingleTickerProviderStateMixin {
  final Color profileColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => getIt<UserScreenBloc>()..add(UserScreenEvent.fetchUserPosts(user: widget.user)),
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  pinned: false,

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
                  // collapsedHeight: 80,
                  // toolbarHeight: 80,
                  primary: true,
                  // expandedHeight: 160.0,
                  title: Text("Profile", style: TextStyle(color: Colors.black54)),
                  actions: [
                    PopupMenuButton(
                        icon: const Icon(Icons.more_vert_rounded, color: Colors.black),
                        itemBuilder: (context) {
                          return [
                            if (widget.ownProfile) PopupMenuItem(child: Text("Edit User")),
                            PopupMenuItem(child: Text("Copy profile link")),
                            PopupMenuItem(child: Text("Share profile link")),
                            if (!widget.ownProfile) PopupMenuItem(child: Text("report user")),
                          ];
                        }),
                  ],
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: profileColor,
                          minRadius: 40,
                          foregroundImage:
                              (widget.user.profilePhotoLink != "") ? NetworkImage(widget.user.profileLink!) : null,
                          child: (widget.user.profilePhotoLink == "")
                              ? Text(
                                  widget.user.userId[0].toUpperCase(),
                                  textScaleFactor: 2.5,
                                )
                              : null,
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20),
                            Text("${widget.user.firstName} ${widget.user.lastName}", style: TextStyle(fontSize: 20)),
                            SizedBox(
                              child: Text(" id: ${widget.user.userId}",
                                  maxLines: 1, style: TextStyle(color: Colors.black54, fontSize: 11)),
                            )
                          ],
                        ))
                      ],
                    ),
                  ),
                ),
                SliverPinnedHeader(
                  child: TabBar(
                    labelColor: Colors.black,
                    automaticIndicatorColorAdjustment: true,
                    labelPadding: EdgeInsets.zero,
                    tabs: [
                      Tab(
                        child: Container(color: Colors.white, child: Center(child: Text("Posts"))),
                      ),
                      Tab(child: Container(color: Colors.white, child: Center(child: Text("Media")))),
                    ],
                    controller: _tabController,
                  ),
                ),
              ];
            },
            body: BlocConsumer<UserScreenBloc, UserScreenState>(
              listener: (context, state) {
                state.mapOrNull(
                    onError: (s) => ScaffoldMessenger.of(context).showSnackBar(AppSnackBars.withText(s.message)));
              },
              builder: (context, state) {
                return state.map(
                    loadingPosts: (s) => Container(height: 100, child: LoadingAnimation()),
                    completed: (s) {
                      return TabBarView(
                        controller: _tabController,
                        children: <Widget>[
                          Center(child: _UserPostsWidget(noOfPost: s.noOfPosts, posts: s.posts)),
                          Center(child: _PostsGrid(noOfPost: s.gridPosts.length, posts: s.gridPosts)),
                        ],
                      );
                    },
                    onError: (s) {
                      return Center(child: Container());
                    });
                // return _PostsGrid();
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _PostsGrid extends StatelessWidget {
  const _PostsGrid({
    Key? key,
    required this.posts,
    required this.noOfPost,
  }) : super(key: key);
  final List<PostModals> posts;
  final int noOfPost;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // physics: FixedExtentScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemCount: noOfPost,
      itemBuilder: (context, index) {
        // index = 0;
        return InkWell(
          onTap: () {
            Navigator.of(context).pushNamed("/home/postComments", arguments: posts[index]);
          },
          child: Container(
            color: index.isOdd ? Colors.white : Colors.black12,
            height: 100.0,
            child: Center(
              child: OctoImage(
                fit: BoxFit.contain,
                image: CachedNetworkImageProvider(posts[index].postPhotoLink!),
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
            ),
          ),
        );
      },
    );
  }
}

class _UserPostsWidget extends StatelessWidget {
  const _UserPostsWidget({Key? key, required this.posts, required this.noOfPost}) : super(key: key);
  final List<PostModals> posts;
  final int noOfPost;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: noOfPost,
      itemBuilder: (context, index) {
        return MobileFeedTiles(
            showUser: false,
            post: posts[index],
            onLikeButtonPressed: (a) {
              return a;
            },
            onProfileOpen: () {},
            onCommentsopen: () {},
            onShareButtonPressed: () {});
      },
    );
  }
}
