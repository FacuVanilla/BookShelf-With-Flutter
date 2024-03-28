import 'package:flutter/material.dart';

class BookTile extends StatelessWidget {
  final String title;
  final String author;
  final bool isRead; 
  final ValueChanged<bool?> checkboxCallback;
  final VoidCallback onDelete;

  BookTile({
    required this.title,
    required this.author,
    required this.isRead,
    required this.checkboxCallback,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: isRead
          ? Icon(Icons.check_circle, color: Colors.green) 
          : Icon(Icons.check_circle_outline, color: Colors.grey), 
      title: Text(title),
      subtitle: Text(author),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isRead,
        onChanged: checkboxCallback,
      ),
      onLongPress: onDelete,
    );
  }
}