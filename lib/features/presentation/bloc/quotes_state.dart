part of 'quotes_bloc.dart';

@freezed
sealed class QuotesState with _$QuotesState {
  const factory QuotesState({
    @Default(false) bool isLoading,
    @Default(0) int selectedBookId,
    @Default(null) QuotesDataEntity? quotesData,
    String? message,
  }) = _QuotesState;

  factory QuotesState.initial() => const QuotesState();
}
