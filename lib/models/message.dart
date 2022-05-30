class Message {
  final String id;
  final String senderId;
  final String receiverId;
  final String message;
  final DateTime date;

  Message({
    required this.id,
    required this.senderId,
    required this.receiverId,
    required this.message,
    required this.date,
  });
}
