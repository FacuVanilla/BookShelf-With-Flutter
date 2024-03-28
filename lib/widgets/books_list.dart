import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/book_data.dart';
import 'book_card.dart'; 

class BooksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<BookData>(
      builder: (context, bookData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final book = bookData.books[index];
            return BookCard(
              title: book.title,
              author: book.author,
              description: book.description,
              imageUrl: book.imageUrl,
              isRead: book.isRead,
              onToggleRead: () {
                bookData.updateBookReadStatus(index, !book.isRead);
              },
              onDelete: () {
                Provider.of<BookData>(context, listen: false).deleteBook(index);
              },
            );
          },
          itemCount: bookData.bookCount,
          padding: EdgeInsets.only(bottom: 65),
        );
      },
    );
  }
}