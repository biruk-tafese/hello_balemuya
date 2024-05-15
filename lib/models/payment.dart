class Payment {
  final String id;
  final String paymentMethod;
  final String cardNumber;
  final String email;
  final double amount;
  final DateTime timestamp;

  Payment({
    required this.id,
    required this.paymentMethod,
    required this.cardNumber,
    required this.email,
    required this.amount,
    required this.timestamp,
  });

  factory Payment.fromJson(Map<String, dynamic> json) {
    return Payment(
      id: json['id'],
      paymentMethod: json['paymentMethod'],
      cardNumber: json['cardNumber'],
      email: json['email'],
      amount: json['amount'].toDouble(),
      timestamp: DateTime.parse(json['timestamp']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'paymentMethod': paymentMethod,
      'cardNumber': cardNumber,
      'email': email,
      'amount': amount,
      'timestamp': timestamp.toIso8601String(),
    };
  }
}
