part of 'test_bloc_bloc.dart';

@freezed
class TestBlocState with _$TestBlocState {
  const factory TestBlocState.initial() = _Initial;
  const factory TestBlocState.error() = _ERROR;
}
