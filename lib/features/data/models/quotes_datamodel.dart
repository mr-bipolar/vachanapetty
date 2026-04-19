import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vachanapetty/features/domain/entities/quotes_data.dart';

part 'quotes_datamodel.freezed.dart';

@freezed
abstract class QuotesDataModel with _$QuotesDataModel {
  factory QuotesDataModel({
    int? id,
    required final String chapter,
    required final String verses,
  }) = _QuotesDataModel;

  factory QuotesDataModel.fromMap(Map<String, dynamic> map) {
    final id = map['id'] as int?;
    final chapter = map['chapter'] as String;
    final verses = map['verses'] as String;
    return QuotesDataModel(id: id, chapter: chapter, verses: verses);
  }
}

extension QuotesDataModelX on QuotesDataModel {
  QuotesDataEntity toEntity() => QuotesDataEntity(
        id: id,
        chapter: chapter,
        verses: verses,
      );
}
