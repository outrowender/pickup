import 'dart:convert';

import 'package:pickup/app/modules/login/domain/entities/User.dart';

class UserModel extends User {
  final String email;
  final String name;
  final String avatar;

  UserModel({
    required this.email,
    required this.name,
    required this.avatar,
  }) : super(email: email, name: name, avatar: avatar);

  UserModel copyWith({
    String? email,
    String? name,
    String? avatar,
  }) {
    return UserModel(
      email: email ?? this.email,
      name: name ?? this.name,
      avatar: avatar ?? this.avatar,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'name': name,
      'avatar': avatar,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      email: map['email'],
      name: map['name'],
      avatar: map['avatar'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() => 'UserModel(email: $email, name: $name, avatar: $avatar)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.email == email &&
        other.name == name &&
        other.avatar == avatar;
  }

  @override
  int get hashCode => email.hashCode ^ name.hashCode ^ avatar.hashCode;
}
