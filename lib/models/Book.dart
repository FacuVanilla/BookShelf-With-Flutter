class Book {
  final String title;
  final String author;
  final String description;
  final String imageUrl; 
  bool isRead;

  Book({
    required this.title,
    required this.author,
    required this.description,
    required this.imageUrl, 
    this.isRead = false,
  });
}