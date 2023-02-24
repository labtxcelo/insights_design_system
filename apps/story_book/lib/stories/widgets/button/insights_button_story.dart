import 'package:flutter/material.dart';
import 'package:story_book/utils/story_options.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class InsightsButtonStory {
  static Story buttonStory = Story(
    name: 'Button',
    description: 'All parameters',
    builder: (context) {
      final text = context.knobs.text(
        label: 'Texto',
        initial: 'Button test',
      );

      final height = context.knobs
          .sliderInt(label: 'Altura', initial: 50, min: 40, max: 150)
          .toDouble();

      final width = context.knobs
          .sliderInt(label: 'Largura', initial: 140, min: 40, max: 300)
          .toDouble();

      final radius = context.knobs
          .sliderInt(label: 'Curvatura', initial: 4, min: 0, max: 50)
          .toDouble();

      final background = context.knobs.options(
          label: 'Cor de fundo',
          initial: Colors.purple,
          options: kColorOptions);

      final borderColor = context.knobs.options(
          label: 'Cor da borda',
          initial: Colors.transparent,
          options: kColorOptions);

      final borderWidth = context.knobs
          .sliderInt(label: 'Tamanho da borda', initial: 1, min: 1, max: 8)
          .toDouble();

      final font = context.knobs.options(
          label: 'Fontes de texto', initial: kBody, options: kFontOptions);

      final fontColor = context.knobs.options(
          label: 'Cor de texto', initial: Colors.white, options: kColorOptions);

      return Center(
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: background,
              borderRadius: BorderRadius.circular(radius),
              border: Border.all(color: borderColor, width: borderWidth)),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(radius),
              splashColor: Colors.grey.withOpacity(0.3),
              onTap: () {},
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    text,
                    style: font.copyWith(color: fontColor),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
