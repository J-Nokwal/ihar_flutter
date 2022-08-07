// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ihar_flutter/core/injection.dart';
import 'package:ihar_flutter/core/modals/postModal.dart';
import 'package:ihar_flutter/features/common/loadingAnimation.dart';
import 'package:ihar_flutter/features/feed/bloc/feed_bloc/feed_bloc.dart';
import 'package:octo_image/octo_image.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FeedTiles extends StatefulWidget {
  const FeedTiles({Key? key, required this.scrollController}) : super(key: key);
  final ScrollController scrollController;
  @override
  State<FeedTiles> createState() => _FeedTilesState();
}

class _FeedTilesState extends State<FeedTiles> {
  List<PostModals> feedList = [];
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FeedBloc>()..add(FeedEvent.initiate()),
      child: BlocListener<FeedBloc, FeedState>(
        listener: (context, state) {
          state.mapOrNull(loading: (s) {
            // setState(() {
            // isLoading = true;
            // });
          }, completed: (s) {
            if (s.errorMessage != null) {
            } else {
              feedList.addAll(s.posts!);
              setState(() {
                isLoading = false;
              });
            }
          });
        },
        child: Stack(
          children: [
            ListView.builder(
                padding: (Device.width < 761)
                    ? EdgeInsets.only(top: 70)
                    : EdgeInsets.only(top: 70, left: (Device.width - 760) / 2, right: (Device.width) / 2 + 20),
                itemCount: feedList.length,
                controller: widget.scrollController,
                itemBuilder: (context, index) {
                  return _MobileFeedTiles(
                      post: feedList[index],
                      onLikeButtonPressed: (bool liked) {
                        feedList[index].liked = !feedList[index].liked;
                        return !liked;
                      },
                      onProfileOpen: () {},
                      onCommentsopen: () {
                        Navigator.of(context).pushNamed("/home/postComments", arguments: feedList[index]);
                      },
                      onShareButtonPressed: () {});
                }),
            if (isLoading) LoadingAnimation(),
          ],
        ),
      ),
    );
  }
}

class _MobileFeedTiles extends StatelessWidget {
  _MobileFeedTiles(
      {Key? key,
      required this.post,
      required this.onLikeButtonPressed,
      required this.onProfileOpen,
      required this.onCommentsopen,
      required this.onShareButtonPressed})
      : super(key: key);
  PostModals post;
  final bool Function(bool liked) onLikeButtonPressed;
  final void Function() onProfileOpen;
  final void Function() onCommentsopen;
  final void Function() onShareButtonPressed;

  //  final VoidCallback callback(int);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const SizedBox(width: 10, height: 45),
              CircleAvatar(
                radius: 20,
                backgroundColor: Theme.of(context).backgroundColor,
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
                  onLikeButtonPressed: (b) {
                    onLikeButtonPressed(b);
                  },
                  isLiked: post.liked),
              IconButton(
                  onPressed: () {
                    onCommentsopen();
                  },
                  icon: const Icon(Icons.comment, color: Colors.black54)),
              IconButton(
                  onPressed: () {
                    onLikeButtonPressed(true);
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

class TempPost {
  final String message;
  bool liked;
  int likes;
  final String post_photo_link;
  final String posting_User;

  TempPost(this.message, this.liked, this.post_photo_link, this.posting_User, this.likes);
}
