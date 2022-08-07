import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterfire_ui/auth.dart' as flutterfire_ui;
import 'package:ihar_flutter/core/firebase_classes/firebase_auth.dart';
import 'package:ihar_flutter/core/injection.dart';
import 'package:ihar_flutter/features/CreatePost/bloc/create_post_bloc/create_post_bloc.dart';
import 'package:ihar_flutter/features/common/snakbar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../common/loadingAnimation.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({Key? key}) : super(key: key);

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  @override
  void initState() {
    super.initState();
    messageFocusNode.requestFocus();
  }

  FocusNode messageFocusNode = FocusNode();
  Uint8List? imageBytes;
  XFile? imageFile;
  final TextEditingController messageController = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return BlocProvider<CreatePostBloc>(
        create: (context) => getIt<CreatePostBloc>(),
        child: WillPopScope(
          onWillPop: () async {
            if (isLoading) {
              return false;
            }
            return true;
          },
          child: Scaffold(
            appBar: (!isLoading)
                ? AppBar(
                    backgroundColor: Colors.white.withOpacity(0.7),
                    title: const Text("Creat Post", style: TextStyle(color: Colors.black54)),
                    leading: IconButton(
                        icon: const Icon(
                          Icons.close_rounded,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                  )
                : null,
            body: BlocListener<CreatePostBloc, CreatePostState>(
              listener: (context, state) {
                state.mapOrNull(
                  loadingState: (s) {
                    if (s.animate) {
                      isLoading = true;
                      setState(() {});
                    }
                  },
                  imageState: (s) async {
                    if (s.errorMessage != null || s.file == null) {
                      isLoading = false;
                      setState(() {});
                      ScaffoldMessenger.of(context).showSnackBar(AppSnackBars.withText(s.errorMessage!));
                    } else {
                      imageBytes = await s.file!.readAsBytes();
                      imageFile = s.file;
                      isLoading = false;
                      setState(() {});
                    }
                  },
                  postedState: (s) async {
                    if (s.errorMessage != null) {
                      isLoading = false;
                      setState(() {});
                      ScaffoldMessenger.of(context).showSnackBar(AppSnackBars.withText(s.errorMessage!));
                    } else {
                      Navigator.of(context).pop();
                    }
                  },
                );
              },
              child: Stack(
                children: [
                  Container(
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 30, 10, 5),
                          child: SizedBox(
                            width: Device.width - 40,
                            // height: 600,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                flutterfire_ui.UserAvatar(
                                  auth: getIt<AppAuth>().firebaseAuthInstance,
                                  size: 50,
                                ),
                                SizedBox(width: 10),
                                SizedBox(
                                  width: Device.width - 110,
                                  child: TextField(
                                    focusNode: messageFocusNode,
                                    scrollPadding: EdgeInsets.only(bottom: 100),
                                    controller: messageController,
                                    keyboardType: TextInputType.multiline,
                                    maxLines: null,
                                    decoration: InputDecoration(hintText: "I heard a rumor,", border: InputBorder.none),
                                  ),
                                ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                        const Divider(indent: 50, endIndent: 10),
                        BlocListener<CreatePostBloc, CreatePostState>(
                          listener: (context, state) async {},
                          child: (imageBytes != null)
                              ? Padding(
                                  padding: EdgeInsets.fromLTRB(50, 5, 10, 20),
                                  child: Container(
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Image.memory(imageBytes!),
                                  ),
                                )
                              : Container(),
                        ),
                        const SizedBox(height: 70),
                      ],
                    ),
                  ),
                  _BottomActionBar(messageController: messageController, imageFile: imageFile),
                  if (isLoading) const LoadingAnimation()
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}

class _BottomActionBar extends StatelessWidget {
  const _BottomActionBar({Key? key, required this.messageController, required this.imageFile}) : super(key: key);
  final TextEditingController messageController;
  final XFile? imageFile;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        color: Colors.white,
        width: Device.width,
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  BlocProvider.of<CreatePostBloc>(context, listen: false)
                      .add(const CreatePostEvent.getCameraImageEvent());
                },
                icon: const Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {
                  BlocProvider.of<CreatePostBloc>(context, listen: false)
                      .add(const CreatePostEvent.getGalleryImageEventEvent());
                },
                icon: const Icon(
                  Icons.collections_outlined,
                  color: Colors.black,
                )),
            Expanded(child: Container()),
            TextButton(
                onPressed: () {
                  BlocProvider.of<CreatePostBloc>(context, listen: false).add(CreatePostEvent.createPostEvent(
                    message: messageController.text,
                    postImage: imageFile,
                  ));
                },
                child: const Icon(
                  Icons.send,
                  color: Colors.black,
                ))
          ],
        ),
      ),
    );
  }
}
