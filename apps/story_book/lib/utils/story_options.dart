import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

const kPrimary = Colors.purple;
const kSecondary = Colors.black;
const kContrast = Colors.white;

const List<Option<Color>> kColorOptions = [
  Option(label: "Primária", value: kPrimary),
  Option(label: "Secundária", value: kSecondary),
  Option(label: "Contraste", value: kContrast),
  Option(label: "Transparente", value: Colors.transparent),
  Option(label: "Azul", value: Colors.blue),
  Option(label: "Cinza", value: Colors.grey),
  Option(label: "Amarelo", value: Colors.yellow),
  Option(label: "Vermelho", value: Colors.red),
  Option(label: "Verde", value: Colors.green),
];

const kBody = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  letterSpacing: 0,
  color: Colors.black,
  height: 1.5,
);

const kBodyStrong = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w600,
  letterSpacing: 0,
  color: Colors.black,
  height: 1.5,
);

const kH6 = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w400,
  letterSpacing: 0,
  color: Colors.black,
  height: 1.5,
);

const List<Option<TextStyle>> kFontOptions = [
  Option(
    label: "Body",
    value: kBody,
  ),
  Option(
    label: "Body Strong",
    value: kBodyStrong,
  ),
  Option(
    label: "H6",
    value: kH6,
  ),
];
