class Client {
  final String id;
  final String name;
  final String email;
  final String profilePictureUrl;

  Client({
    required this.id,
    required this.name,
    required this.email,
    required this.profilePictureUrl,
  });

  factory Client.fromJson(Map<String, dynamic> json) {
    return Client(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      profilePictureUrl: json['profilePictureUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'profilePictureUrl': profilePictureUrl,
    };
  }
}
