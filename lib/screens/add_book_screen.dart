import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/book_data.dart'; 

class AddBookScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newBookTitle = '';
    String newBookAuthor = '';
    String newBookDescription = '';
    String newBookImageUrl = ''; 

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Book',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newBookTitle = newText;
              },
              decoration: InputDecoration(
                hintText: 'Title',
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newBookAuthor = newText;
              },
              decoration: InputDecoration(
                hintText: 'Author',
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newBookDescription = newText;
              },
              decoration: InputDecoration(
                hintText: 'Description',
              ),
            ),
            TextField( 
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newBookImageUrl = newText;
              },
              decoration: InputDecoration(
                hintText: 'Image URL',
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Provider.of<BookData>(context, listen: false).addBook(
                  newBookTitle,
                  newBookAuthor,
                  newBookDescription,
                  newBookImageUrl,
                );
                Navigator.pop(context);
              },
              child: Text('Add'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}