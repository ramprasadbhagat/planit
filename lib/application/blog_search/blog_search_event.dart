part of 'blog_search_bloc.dart';

@freezed
class BlogSearchEvent with _$BlogSearchEvent {
  const factory BlogSearchEvent.searchStringChange(String text) =
      _searchStringChange;
  const factory BlogSearchEvent.search(String text) = _Search;
  const factory BlogSearchEvent.reset() = _Reset;
  const factory BlogSearchEvent.fetchMore() = _FetchMore;
}
