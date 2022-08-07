part of 'create_post_bloc.dart';

@freezed
class CreatePostEvent with _$CreatePostEvent {
  const factory CreatePostEvent.createPostEvent({required XFile? postImage, required String message}) =
      _CreatePostEvent;
  const factory CreatePostEvent.getCameraImageEvent() = _GetCameraImageEvent;
  const factory CreatePostEvent.getGalleryImageEventEvent() = _GetGalleryImageEvent;
}
