part of 'quotes_bloc.dart';

@freezed
sealed class QuotesEvent with _$QuotesEvent {
  const factory QuotesEvent.fetchAll({int? bookId}) = _FetchAll;
  const factory QuotesEvent.chooseBook({int? bookId}) = _ChooseBook;
}
