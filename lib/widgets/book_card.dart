import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final String title;
  final String author;
  final String description;
  final String imageUrl;
  final bool isRead;
  final VoidCallback onDelete;
  final VoidCallback onToggleRead;

  const BookCard({
    required this.title,
    required this.author,
    required this.description,
    required this.imageUrl,
    required this.isRead,
    required this.onDelete,
    required this.onToggleRead,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Image.network(imageUrl, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
                Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(height: 5), 
                Text(author, style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
                SizedBox(height: 10), 
                Text(description, style: TextStyle(fontSize: 14)),
              ],
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(isRead ? Icons.check_circle : Icons.check_circle_outline, color: isRead ? Colors.green : Colors.grey),
                onPressed: onToggleRead,
              ),
              IconButton(
                icon: Icon(Icons.delete, color: Colors.red),
                onPressed: onDelete,
              ),
            ],
          ),
        ],
      ),
    );
  }
}