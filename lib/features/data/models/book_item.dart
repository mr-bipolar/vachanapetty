class BookItem {
  final int id;
  final String name;

  const BookItem({
    required this.id,
    required this.name,
  });

  static const books = [
    BookItem(id: 0, name: 'എല്ലാം'),
    BookItem(id: 2, name: 'സങ്കീർത്തനം'),
    BookItem(id: 3, name: 'സദൃശ്യ'),
    BookItem(id: 4, name: 'യോഹ'),
    BookItem(id: 1, name: 'ഉൽപ്പത്തി'),
    BookItem(id: 6, name: 'ഫിലിപ്പ്യ'),
    BookItem(id: 5, name: 'യെശയ്യ'),
    BookItem(id: 7, name: 'റോമർ'),
    BookItem(id: 8, name: 'മത്തായി'),
  ];
}
