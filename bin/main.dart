void main() {
  Book bookObj = Book(
    title: 'Dart Programming With Ostad',
    author: 'Mithun Adhikary',
    publicationYear: 2024,
    pagesRead: 10,
  );

  print(bookObj.getTitle());
  print(bookObj.getAuthor());
  print(bookObj.getPublicationYear());
  print(bookObj.getPagesRead());
}

class Book {
  String title;
  String author;
  int publicationYear;
  int pagesRead;

  Book({
    required this .title,
    required this.author,
    required this.publicationYear,
    required this.pagesRead
  }) {
    // Something
  }

  String getTitle() {
    return title;
  }

  String getAuthor() {
    return author;
  }

  int getPublicationYear() {
    return publicationYear;
  }

  int getPagesRead() {
    return pagesRead;
  }

}