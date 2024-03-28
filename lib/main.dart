import 'package:flutter/material.dart';
import 'screens/books_screen.dart';
import 'models/book_data.dart'; 
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BookData(), 
      child: MaterialApp(
        home: BooksScreen(),
      ),
    );
  }
}
