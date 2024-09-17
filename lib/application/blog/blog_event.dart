part of 'blog_bloc.dart';

@freezed
class BlogEvent with _$BlogEvent {
  const factory BlogEvent.fetchBlogs() = _FetchBlogs;
  const factory BlogEvent.fetchFilterList() = _FetchFilterList;
  const factory BlogEvent.updateFilter() = _UpdateFilter;
  const factory BlogEvent.tagCheckboxChange(String title) = _TagCheckboxChange;
  const factory BlogEvent.clearAllFilterClicked() = _ClearAllFilterClicked;

  const factory BlogEvent.loadMoreBlogs() = _LoadMoreBlogs;
}
