class QuotesDataEntity {
// from verses table
  final int id;
  final int bookId;
  final String verseNumber;
  final String quoteMl;

  // from books table
  final String nameEn;
  final String nameMl;

  QuotesDataEntity(
      {required this.id,
      required this.bookId,
      required this.verseNumber,
      required this.quoteMl,
      required this.nameEn,
      required this.nameMl});
}
