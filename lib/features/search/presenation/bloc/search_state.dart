part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default([]) List<NewsModel> resultModels,
    @Default('') String query,
    @Default('') String errorMessage,
    @Default(1) int currentPage,
    @Default(1) int maxPage,
    @Default(0) int currentCardIndex,
  }) = _SearchState;
}
