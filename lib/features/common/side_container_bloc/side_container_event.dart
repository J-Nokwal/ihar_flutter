part of 'side_container_bloc.dart';

@freezed
class SideContainerEvent with _$SideContainerEvent {
  const factory SideContainerEvent.started() = _Started;
  const factory SideContainerEvent.getPostComments({required PostModals post}) = _GetPostComments;
  const factory SideContainerEvent.getTopRumorers() = _GetTopRumorers;
}
