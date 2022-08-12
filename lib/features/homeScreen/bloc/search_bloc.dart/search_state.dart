part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.loading() = _Loading;
  const factory SearchState.noResultFound() = _NoResultFound;
  const factory SearchState.result(SearchResultModal searchResultModal) = _Result;
  const factory SearchState.onError({required String errorMessage}) = _OnError;
}
