// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/widgets.dart';

class User {
  final int? id;
  final String username;
  final String email;
  final String? provider;
  final bool? confirmed;
  final bool? blocked;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  User({
     this.id,
    required this.username,
    required this.email,
     this.provider,
     this.confirmed,
     this.blocked,
     this.createdAt,
     this.updatedAt,
  });

  User copyWith({
    ValueGetter<int?>? id,
    String? username,
    String? email,
    ValueGetter<String?>? provider,
    ValueGetter<bool?>? confirmed,
    ValueGetter<bool?>? blocked,
    ValueGetter<DateTime?>? createdAt,
    ValueGetter<DateTime?>? updatedAt,
  }) {
    return User(
      id: id != null ? id() : this.id,
      username: username ?? this.username,
      email: email ?? this.email,
      provider: provider != null ? provider() : this.provider,
      confirmed: confirmed != null ? confirmed() : this.confirmed,
      blocked: blocked != null ? blocked() : this.blocked,
      createdAt: createdAt != null ? createdAt() : this.createdAt,
      updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'username': username,
      'email': email,
      'provider': provider,
      'confirmed': confirmed,
      'blocked': blocked,
      'createdAt': createdAt?.millisecondsSinceEpoch,
      'updatedAt': updatedAt?.millisecondsSinceEpoch,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id']?.toInt(),
      username: map['username'] ?? '',
      email: map['email'] ?? '',
      provider: map['provider'],
      confirmed: map['confirmed'],
      blocked: map['blocked'],
      createdAt: map['createdAt'] != null ? DateTime.fromMillisecondsSinceEpoch(map['createdAt']) : null,
      updatedAt: map['updatedAt'] != null ? DateTime.fromMillisecondsSinceEpoch(map['updatedAt']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(id: $id, username: $username, email: $email, provider: $provider, confirmed: $confirmed, blocked: $blocked, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is User &&
      other.id == id &&
      other.username == username &&
      other.email == email &&
      other.provider == provider &&
      other.confirmed == confirmed &&
      other.blocked == blocked &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      username.hashCode ^
      email.hashCode ^
      provider.hashCode ^
      confirmed.hashCode ^
      blocked.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode;
  }
  }
