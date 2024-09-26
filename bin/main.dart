import 'dart:core';  // For DateTime

void main() {
  Book bookObj = Book(
    title: 'Dart Programming With Ostad',
    author: 'Mithun Adhikary',
    publicationYear: 2020,
    pagesRead: 10,
  );

  Book bookObjTwo = Book(
    title: 'Dart Programming With Rafat Bhai',
    author: 'Rafat Bhai',
    publicationYear: 2019,
    pagesRead: 10,
  );

  Book bookObjThree = Book(
    title: 'Dart Programming With Rabbil Bhai',
    author: 'Rabbil Bhai',
    publicationYear: 2018,
    pagesRead: 10,
  );

  // Adds the pageRead property
  bookObj.read(30);
  bookObjTwo.read(35);
  bookObjThree.read(40);

  // Print the details of first book
  print('\nFirst Book Details:');
  print('.............................');
  print('Title: ${bookObj.getTitle()}');
  print('Author: ${bookObj.getAuthor()}');
  print('Publication Year: ${bookObj.getPublicationYear()}');
  print('Pages Read: ${bookObj.getPagesRead()}');
  print('Book Age: ${bookObj.getBookAge()} years');

  // Print the details of second book
  print('\nSecond Book Details:');
  print('.............................');
  print('Title: ${bookObjTwo.getTitle()}');
  print('Author: ${bookObjTwo.getAuthor()}');
  print('Publication Year: ${bookObjTwo.getPublicationYear()}');
  print('Pages Read: ${bookObjTwo.getPagesRead()}');
  print('Book Age: ${bookObjTwo.getBookAge()} years');

  // Print the details of third book
  print('\nThird Book Details:');
  print('.............................');
  print('Title: ${bookObjThree.getTitle()}');
  print('Author: ${bookObjThree.getAuthor()}');
  print('Publication Year: ${bookObjThree.getPublicationYear()}');
  print('Pages Read: ${bookObjThree.getPagesRead()}');
  print('Book Age: ${bookObjThree.getBookAge()} years');

  // Showing the total Numbers of book
  print('\nTotal number of books created: ${Book.getTotalBooks()}');

}

class Book {
  String title;
  String author;
  int publicationYear;
  int pagesRead;

  static int totalBooks = 0;

  Book({
    required this .title,
    required this.author,
    required this.publicationYear,
    required this.pagesRead
  }) {
    // Something
    totalBooks++;
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

  static int getTotalBooks() {
    return totalBooks;
  }

}