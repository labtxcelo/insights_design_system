import 'package:flutter/material.dart';

class InsightsTextStyles {
  final TextStyle h6;
  final TextStyle body;
  final TextStyle bodyStrong;

  const InsightsTextStyles({
    this.h6 = kH6,
    this.body = kBody,
    this.bodyStrong = kBodyStrong,
  });

  InsightsTextStyles copyWith({
    TextStyle? h6,
    TextStyle? body,
    TextStyle? bodyStrong,
  }) {
    return InsightsTextStyles(
      h6: h6 ?? this.h6,
      body: body ?? this.body,
      bodyStrong: bodyStrong ?? this.bodyStrong,
    );
  }

  static const kBody = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    color: Colors.black,
    height: 1.5,
  );

  static const kBodyStrong = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    color: Colors.black,
    height: 1.5,
  );

  static const kH6 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    color: Colors.black,
    height: 1.5,
  );
}
