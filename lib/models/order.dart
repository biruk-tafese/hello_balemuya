class Order {
  final String id;
  final String clientId;
  final String serviceProviderId;
  final String title;
  final String status;
  final DateTime dateTime;

  Order({
    required this.id,
    required this.clientId,
    required this.serviceProviderId,
    required this.title,
    required this.status,
    required this.dateTime,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      id: json['id'],
      clientId: json['clientId'],
      serviceProviderId: json['serviceProviderId'],
      title: json['title'],
      status: json['status'],
      dateTime: DateTime.parse(json['dateTime']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'clientId': clientId,
      'serviceProviderId': serviceProviderId,
      'title': title,
      'status': status,
      'dateTime': dateTime.toIso8601String(),
    };
  }
}
