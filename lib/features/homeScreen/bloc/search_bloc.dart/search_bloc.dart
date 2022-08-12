import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ihar_flutter/core/modals/searchResultModal.dart';
import 'package:ihar_flutter/core/requests/searchRequest.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors.dart';
import '../../../../core/firebase_classes/firebase_auth.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(Dio dio, AppAuth appAuth) : super(const _Loading()) {
    on<SearchEvent>((event, emit) async {
      await event.map(started: (e) async {
        emit(const _Loading());
        try {
          final SearchResultModal searchResultModal = await SearchRequests.getSearchResults(dio,
              byUser: appAuth.firebaseAuthInstance.currentUser!.uid, searchQuery: e.query);
          if (searchResultModal.posts.isEmpty && searchResultModal.users.isEmpty) {
            emit(const _NoResultFound());
          } else {
            emit(_Result(searchResultModal));
          }
        } on AppExceptions catch (e) {
          emit(_OnError(errorMessage: e.message ?? "Error"));
        } catch (e) {
          emit(const _OnError(errorMessage: "Error"));
        }
      });
    });
  }
}
