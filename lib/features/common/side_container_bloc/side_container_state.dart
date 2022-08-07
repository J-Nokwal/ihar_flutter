part of 'side_container_bloc.dart';

@freezed
class SideContainerState with _$SideContainerState {
  const factory SideContainerState.initialState() = _InitialState;
  const factory SideContainerState.postCommentsState({List<CommentModal>? comments, String? errorMessage}) =
      _PostCommentsState;
  const factory SideContainerState.loadingState() = _LoadingState;
  const factory SideContainerState.toprumorersState({List<UserModals>? topRumorers, String? errorMessage}) =
      _ToprumorersState;
}
