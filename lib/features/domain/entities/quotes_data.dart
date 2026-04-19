class QuotesDataEntity {
  final int? id;
  final String chapter;
  final String verses;

  QuotesDataEntity({
    this.id,
    required this.chapter,
    required this.verses,
  });

  String get chapterName {
    final index = chapter.indexOf('[');
    return index == -1 ? chapter.trim() : chapter.substring(0, index).trim();
  }

  String get chapterVerseRef {
    final match = RegExp(r'\[\s*(\d+)\s*:\s*(\d+)\s*\]').firstMatch(chapter);

    if (match == null) return '';
    return '${match.group(1)} : ${match.group(2)}';
  }
}
