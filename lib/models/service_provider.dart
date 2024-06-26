class ServiceProvider {
  final String id;
  final String name;
  final String email;
  final String profilePictureUrl;

  ServiceProvider({
    required this.id,
    required this.name,
    required this.email,
    required this.profilePictureUrl,
  });

  factory ServiceProvider.fromJson(Map<String, dynamic> json) {
    return ServiceProvider(
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
