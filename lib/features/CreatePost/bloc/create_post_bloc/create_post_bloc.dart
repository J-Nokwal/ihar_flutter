import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ihar_flutter/core/errors.dart';
import 'package:ihar_flutter/core/firebase_classes/firebase_auth.dart';
import 'package:ihar_flutter/core/modals/postModal.dart';
import 'package:ihar_flutter/core/requests/postRequests.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/firebase_classes/firebase_storage.dart';
import '../../../../core/injection.dart';

part 'create_post_event.dart';
part 'create_post_state.dart';
part 'create_post_bloc.freezed.dart';

@injectable
class CreatePostBloc extends Bloc<CreatePostEvent, CreatePostState> {
  CreatePostBloc(Dio dio, AppAuth appAuth, AppFireBaseStorage appFireBaseStorage) : super(const _Initial()) {
    on<CreatePostEvent>((event, emit) async {
      await event.map(createPostEvent: (_CreatePostEvent event) async {
        emit(const _LoadingState(animate: true));
        try {
          if (event.postImage != null || event.message != "") {
            PostModals post = PostModals(userId: appAuth.firebaseAuthInstance.currentUser!.uid);
            if (event.postImage != null) {
              final UploadReturn uploadReturn = await appFireBaseStorage.uploadImage(event.postImage!);
              await uploadReturn.task;
              String downloadLink = await uploadReturn.mountainsRef.getDownloadURL();
              post.postPhotoLink = downloadLink;
            }
            if (event.message != null) {
              post.message = event.message;
            }
            await PostsRequests.createPost(dio, post: post);
            emit(const _PostedState());
          } else {
            emit(const _PostedState(errorMessage: "Please input at least one field (i.e Message or Image)"));
          }
        } on AppExceptions catch (e) {
          emit(_PostedState(errorMessage: e.message));
        } catch (e) {
          emit(const _PostedState(errorMessage: "Error"));
        }
      }, getCameraImageEvent: (_GetCameraImageEvent event) async {
        emit(const _LoadingState());
        try {
          final ImagePicker _picker = ImagePicker();
          final XFile? image = await _picker.pickImage(source: ImageSource.camera);
          if (image == null) {
            throw AppExceptions(message: "Image not clicked");
          }
          emit(_ImageState(file: image));
        } on AppExceptions catch (e) {
          emit(_ImageState(errorMessage: e.message));
        } catch (e) {
          emit(const _ImageState(errorMessage: "Error"));
        }
      }, getGalleryImageEventEvent: (_GetGalleryImageEvent event) async {
        emit(const _LoadingState());
        try {
          final ImagePicker _picker = ImagePicker();
          final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
          if (image == null) {
            throw AppExceptions(message: "Image not selected");
          }
          emit(_ImageState(file: image));
        } on AppExceptions catch (e) {
          emit(_ImageState(errorMessage: e.message));
        } catch (e) {
          emit(const _ImageState(errorMessage: "Error"));
        }
      });
    });
  }
}
