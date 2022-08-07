import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_bloc_event.dart';
part 'test_bloc_state.dart';
part 'test_bloc_bloc.freezed.dart';

class TestBlocBloc extends Bloc<TestBlocEvent, TestBlocState> {
  TestBlocBloc() : super(_Initial()) {
    on<TestBlocEvent>((event, emit) async {
      await event.map(
          started: (e) {},
          trigger: (e) {
            emit(_ERROR());
          });
    });
  }
}
