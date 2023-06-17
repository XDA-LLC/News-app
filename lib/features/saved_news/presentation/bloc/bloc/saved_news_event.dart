part of 'saved_news_bloc.dart';

@freezed
class SavedNewsEvent with _$SavedNewsEvent {
  const factory SavedNewsEvent.getNewsFromStorage() = _GetNewsFromStorage;
  const factory SavedNewsEvent.addOneNews(NewsModel model) = _AddOneNews;
  const factory SavedNewsEvent.removeOneNews(NewsModel model) = _RemoveOneNews;
  const factory SavedNewsEvent.clear() = _Clear;
}
