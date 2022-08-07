part of 'create_post_bloc.dart';

@freezed
class CreatePostState with _$CreatePostState {
  const factory CreatePostState.initial() = _Initial;
  const factory CreatePostState.imageState({XFile? file, String? errorMessage}) = _ImageState;
  const factory CreatePostState.loadingState({@Default(false) bool animate}) = _LoadingState;
  const factory CreatePostState.postedState({String? errorMessage}) = _PostedState;
}
