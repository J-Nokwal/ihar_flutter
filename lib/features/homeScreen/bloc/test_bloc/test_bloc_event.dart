part of 'test_bloc_bloc.dart';

@freezed
class TestBlocEvent with _$TestBlocEvent {
  const factory TestBlocEvent.started() = _Started;
  const factory TestBlocEvent.trigger() = _Trigger;
}
