import 'package:flutter/foundation.dart';
import 'dart:collection';
import 'Book.dart'; 

class BookData extends ChangeNotifier {
  List<Book> _books = [];

  UnmodifiableListView<Book> get books {
    return UnmodifiableListView(_books);
  }

  int get bookCount {
    return _books.length;
  }

  void addBook(String title, String author, String description, String imageUrl) {
    final book = Book(title: title, author: author, description: description, imageUrl: imageUrl);
    _books.add(book);
    notifyListeners();
  }

  void updateBookReadStatus(int index, bool isRead) {
    _books[index].isRead = isRead;
    notifyListeners();
  }

  void deleteBook(int index) {
    _books.removeAt(index);
    notifyListeners();
  }
}