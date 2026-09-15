abstract class BookPaths {
  static const String books = 'search/python';
  static String searchBooks({required String topic}) => 'search/$topic';

  static String bookDetails({required String id}) => 'book/$id';
}
