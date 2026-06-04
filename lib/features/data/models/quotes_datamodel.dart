import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vachanapetty/features/domain/entities/quotes_data.dart';

part 'quotes_datamodel.freezed.dart';

@freezed
abstract class QuotesDataModel with _$QuotesDataModel {
  factory QuotesDataModel({
    // from verses table
    required final int id,
    required final int bookId,
    required final String verseNumber,
    required final String quoteMl,

    // from books table
    required final String nameEn,
    required final String nameMl,
  }) = _QuotesDataModel;

  factory QuotesDataModel.fromMap(Map<String, dynamic> map) {
    final id = map['id'] as int;
    final bookId = map['book_id'] as int;
    final verseNumber = map['verse_number'] as String;
    final quoteMl = map['quote_ml'] as String;
    final nameEn = map['name_en'] as String;
    final nameMl = map['name_ml'] as String;
    return QuotesDataModel(
      id: id,
      bookId: bookId,
      verseNumber: verseNumber,
      quoteMl: quoteMl,
      nameEn: nameEn,
      nameMl: nameMl,
    );
  }
}

extension QuotesDataModelX on QuotesDataModel {
  QuotesDataEntity toEntity() => QuotesDataEntity(
      id: id,
      bookId: bookId,
      verseNumber: verseNumber,
      quoteMl: quoteMl,
      nameEn: nameEn,
      nameMl: nameMl);
}
