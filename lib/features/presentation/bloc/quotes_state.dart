part of 'quotes_bloc.dart';

@freezed
abstract class QuotesState with _$QuotesState {
  const factory QuotesState(
      {QuotesData? quotedata,
      required bool isLoading,
      required Option<Either<Failures, QuotesData>> failorpass}) = _DataLoaded;

  factory QuotesState.initial() {
    return const QuotesState(isLoading: false, failorpass: None());
  }
}
