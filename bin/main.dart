import 'dart:core';  // For DateTime

void main() {
  Book bookObj = Book(
    title: 'Dart Programming With Ostad',
    author: 'Mithun Adhikary',
    publicationYear: 2020,
    pagesRead: 10,
  );

  // Adds the pageRead property
  bookObj.read(30);

  // Getting the total page red
  int totalPageRead = bookObj.getPagesRead();
  print('Total pages read: $totalPageRead');

  // Showing the title property
  String bookTitle = bookObj.getTitle();
  print('The Book Title is: $bookTitle');

  // Showing the author property
  String bookAuthor = bookObj.getAuthor();
  print('The Book Author is: $bookAuthor');

  // Showing the publication Year
  int bookPublicationYear = bookObj.getPublicationYear();
  print('The Book Publication Year is: $bookPublicationYear');

  // Showing the age of this book
  int bookAge = bookObj.getBookAge();
  print('The book is $bookAge years old.');

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

  int read(int pages) {
    if(pages > 0) {
      return pagesRead += pages;
    } else {
      return pagesRead;
    }
  }

  int getPagesRead() {
    return pagesRead;
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

  int getBookAge() {
    int currentYear = DateTime.now().year;
    return currentYear - publicationYear;
  }

}