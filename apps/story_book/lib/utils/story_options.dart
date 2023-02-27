import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

const List<Option<Color>> kColorOptions = [
  Option(label: "Primária", value: InsightsColors.primary),
  Option(label: "Secundária", value: InsightsColors.secondary),
  Option(label: "Contraste", value: InsightsColors.contrast),
  Option(label: "Transparente", value: InsightsColors.transparent),
  Option(label: "Cinza claro", value: InsightsColors.disabled),
  Option(label: "Laranja Alerta", value: InsightsColors.alert),
  Option(label: "Vermelho Error", value: InsightsColors.error),
  Option(label: "Verde Sucesso", value: InsightsColors.success),
];

const List<Option<TextStyle>> kFontOptions = [
  Option(
    label: "Body",
    value: InsightsTextStyles.kBody,
  ),
  Option(
    label: "Body Strong",
    value: InsightsTextStyles.kBodyStrong,
  ),
  Option(
    label: "H6",
    value: InsightsTextStyles.kH6,
  ),
];
