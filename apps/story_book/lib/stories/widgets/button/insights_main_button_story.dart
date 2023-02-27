import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:story_book/utils/story_options.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class InsightsMainButtonStory {
  static Story buttonStory = Story(
    name: 'Button',
    description: 'All parameters',
    builder: (context) {
      final text = context.knobs.text(
        label: 'Texto',
        initial: 'Insights',
      );

      final height = context.knobs
          .sliderInt(
            label: 'Altura',
            initial: 50,
            min: 40,
            max: 150,
          )
          .toDouble();

      final width = context.knobs
          .sliderInt(
            label: 'Largura',
            initial: 140,
            min: 40,
            max: 300,
          )
          .toDouble();

      final radius = context.knobs
          .sliderInt(
            label: 'Curvatura',
            initial: 4,
            min: 0,
            max: 50,
          )
          .toDouble();

      final background = context.knobs.options(
        label: 'Cor de fundo',
        initial: InsightsColors.primary,
        options: kColorOptions,
      );

      final borderColor = context.knobs.options(
        label: 'Cor da borda',
        initial: InsightsColors.transparent,
        options: kColorOptions,
      );

      final borderWidth = context.knobs
          .sliderInt(
            label: 'Tamanho da borda',
            initial: 1,
            min: 1,
            max: 8,
          )
          .toDouble();

      final textStyle = context.knobs.options(
        label: 'Estilo do texto',
        initial: InsightsTextStyles.kBodyStrong,
        options: kFontOptions,
      );

      final textColor = context.knobs.options(
        label: 'Cor de texto',
        initial: InsightsColors.contrast,
        options: kColorOptions,
      );

      final enabled = context.knobs.boolean(
        label: 'Disponível',
        initial: true,
      );

      return Center(
        child: InsightsMainButton(
          onTap: enabled ? () {} : null,
          buttonText: text,
          style: InsightsMainButtonStyle(
            backgroundColor: background,
            height: height,
            width: width,
            radius: radius,
            borderColor: borderColor,
            borderWidth: borderWidth,
            textStyle: textStyle,
            textColor: textColor,
          ),
        ),
      );
    },
  );
}
