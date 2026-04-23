class Mail {
  String subject;
  String message;
  String sender;
  String receiver;

  Map<String, String> toJson() => {
        'subject': subject,
        'message': message,
        'sender': sender,
        'receiver': receiver
      };
}
