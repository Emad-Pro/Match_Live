import 'dart:convert';

import 'package:equatable/equatable.dart';

class TeamName extends Equatable {
  final String arName;
  final String enName;

  const TeamName({required this.arName, required this.enName});

  factory TeamName.fromMap(Map<String, dynamic> map) {
    return TeamName(
      arName: map['arName'] as String,
      enName: map['enName'] as String,
    );
  }

  factory TeamName.fromJson(String source) =>
      TeamName.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  List<Object> get props => [arName, enName];
}
