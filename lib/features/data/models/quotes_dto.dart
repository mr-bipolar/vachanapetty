import 'package:vachanapetty/features/domain/entities/quotes_data.dart';

class QuotesDto {
  int? id;
  final String chapter;
  final String verses;

  QuotesDto({
    required this.chapter,
    required this.verses,
    this.id,
  });

  factory QuotesDto.fromMap(Map<String, Object?> map) {
    final id = map['id'] as int?;
    final chapter = map['chapter'] as String;
    final verses = map['verses'] as String;
    return QuotesDto(id: id, chapter: chapter, verses: verses);
  }

  QuotesData toEntity() {
    return QuotesData(
      id: id,
      chapter: chapter,
      verses: verses,
    );
  }
}
