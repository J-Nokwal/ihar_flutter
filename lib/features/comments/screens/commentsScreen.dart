import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ihar_flutter/core/modals/postModal.dart';
import 'package:octo_image/octo_image.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../feed/screens/FeedTiles.dart';

class CommentsScreen extends StatelessWidget {
  CommentsScreen({Key? key, required this.post}) : super(key: key);
  final PostModals post;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white.withOpacity(0.7),
          title: const Text("Comments", style: TextStyle(color: Colors.black54)),
          leading: IconButton(
              icon: const Icon(
                Icons.close_rounded,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              }),
        ),
        body: Stack(
          children: [
            Container(
              color: Colors.white,
              child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
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
                  const SizedBox(height: 70),
                  // PlayOneShotAnimation(post: post, onPressed: onLikeButtonPressed),
                ],
              ),
            ),
            _BottomActionBar(controller: controller)
          ],
        ),
      );
    });
  }
}

class _BottomActionBar extends StatelessWidget {
  const _BottomActionBar({Key? key, required this.controller}) : super(key: key);
  final TextEditingController controller;
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
          focusNode: FocusNode()..requestFocus(),
          textInputAction: TextInputAction.newline,
          autofocus: true,
          decoration: InputDecoration(
              suffixIcon: Icon(Icons.send),

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
      ),
    );
  }
}
