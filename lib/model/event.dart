//import 'package:flutter/material.dart';
import 'dart:convert';

class Event {
  Event({
    required this.id,
    required this.name,
    required this.startDate,
    required this.endDate,
  });

  String id;
  String name;
  String startDate;
  String endDate;

  Event copyWith({
    required String id,
    required String name,
    required String startDate,
    required String endDate,
  }) {
    return Event(
        id: this.id,
        name: this.name,
        startDate: this.startDate,
        endDate: this.endDate);
  }

  Map<String, dynamic> toJson() {
    assert(name != '');

    return <String, dynamic>{
      'name': name,
      'startDate': startDate,
      'endDate': endDate,
    };
  }

  static Event fromJson(Map<String, dynamic> map) => Event(
        id: map['id'],
        name: map['name'] as String,
        startDate: map['startDate'] as String,
        endDate: map['endDate'] as String,
      );
}

String getPrettyJSONString(Object jsonObject) {
  return const JsonEncoder.withIndent('  ').convert(jsonObject);
}

const String Function(Object jsonObject) displayEvent = getPrettyJSONString;
