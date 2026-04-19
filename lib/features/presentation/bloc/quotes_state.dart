part of 'quotes_bloc.dart';

@freezed
sealed class QuotesState with _$QuotesState {
  const factory QuotesState.initial() = _initial;
  const factory QuotesState.loading() = Loading;
  const factory QuotesState.jumpToIndex({int? index}) = JumpToIndex;
  const factory QuotesState.fetch(
      {required List<QuotesDataEntity> quotesData,
      int? jumpToIndex}) = AllQuotesData;
  const factory QuotesState.error({String? message}) = Error;
}
