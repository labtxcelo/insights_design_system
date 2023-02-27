import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../base/base_test.dart';

void main() {
  group('Button without parameters quality check', () {
    testWidgets('Make sure that the button contain all default properties',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        widgetTestBase(widget: const InsightsMainButton()),
      );

      expect(find.byType(InsightsMainButton), findsOneWidget);
      expect(find.byType(Container), findsOneWidget);
      expect(find.byType(InkWell), findsOneWidget);
      expect(find.byType(Center), findsOneWidget);
      expect(find.byType(Text), findsOneWidget);
    });

    testWidgets('Make sure that the button contain all default styles',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        widgetTestBase(widget: const InsightsMainButton()),
      );

      final Size size = tester.getSize(find.byType(InsightsMainButton));
      final Container container =
          tester.firstWidget<Container>(find.byType(Container));
      final BoxDecoration decoration = container.decoration as BoxDecoration;

      expect(container.margin, equals(EdgeInsets.zero));
      expect(decoration.color, equals(InsightsColors.disabled));
      expect(decoration.borderRadius, equals(BorderRadius.circular(0)));
      expect(
          decoration.border,
          equals(
            Border.all(
              width: 0,
              color: InsightsColors.transparent,
            ),
          ));
      expect(size.height, 50);
      expect(size.width, 200);
    });
  });

  group('Button with parameters quality check', () {
    testWidgets('Make sure that the button contain specific text',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        widgetTestBase(
            widget: const InsightsMainButton(
          buttonText: 'label_test',
        )),
      );

      expect(find.byType(InsightsMainButton), findsOneWidget);
      expect(find.text('label_test'), findsOneWidget);
    });

    testWidgets('Make sure that the button has been tapped',
        (WidgetTester tester) async {
      bool tap = false;
      await tester.pumpWidget(
        widgetTestBase(widget: InsightsMainButton(
          onTap: () {
            tap = true;
          },
        )),
      );

      expect(tap, isFalse);
      await tester.tap(find.byType(InkWell));
      expect(tap, isTrue);
    });

    testWidgets('Make sure that the able button contain default styles values',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        widgetTestBase(
            widget: InsightsMainButton(
          onTap: () {},
          buttonText: 'label_test',
        )),
      );

      final Size size = tester.getSize(find.byType(InsightsMainButton));
      final Container container =
          tester.firstWidget<Container>(find.byType(Container));
      final BoxDecoration decoration = container.decoration as BoxDecoration;
      final TextStyle textStyle =
          tester.firstWidget<Text>(find.byType(Text)).style as TextStyle;

      expect(container.margin, equals(EdgeInsets.zero));
      expect(decoration.color, equals(InsightsColors.primary));
      expect(decoration.borderRadius, equals(BorderRadius.circular(0)));
      expect(
          decoration.border,
          equals(
            Border.all(
              width: 0,
              color: InsightsColors.transparent,
            ),
          ));
      expect(size.height, 50);
      expect(size.width, 200);
      expect(
          textStyle,
          InsightsTextStyles.kBodyStrong
              .copyWith(color: InsightsColors.contrast));
    });

    testWidgets(
        'Make sure that the disabled button contain default styles values',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        widgetTestBase(
            widget: const InsightsMainButton(
          buttonText: 'label_test',
        )),
      );

      final Container container =
          tester.firstWidget<Container>(find.byType(Container));
      final BoxDecoration decoration = container.decoration as BoxDecoration;

      expect(decoration.color, equals(InsightsColors.disabled));
    });

    testWidgets(
        'Make sure that the able button contain parameters styles values',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        widgetTestBase(
            widget: InsightsMainButton(
          onTap: () {},
          buttonText: 'label_test',
          style: const InsightsMainButtonStyle(
            height: 60,
            width: 240,
            radius: 8,
            borderWidth: 4,
            backgroundColor: InsightsColors.secondary,
            borderColor: InsightsColors.primary,
            textColor: InsightsColors.primary,
            textStyle: InsightsTextStyles.kH6,
            margin: EdgeInsets.all(8),
          ),
        )),
      );

      final Size size = tester.getSize(find.byType(InsightsMainButton));
      final Container container =
          tester.firstWidget<Container>(find.byType(Container));
      final BoxDecoration decoration = container.decoration as BoxDecoration;
      final TextStyle textStyle =
          tester.firstWidget<Text>(find.byType(Text)).style as TextStyle;

      expect(container.margin, equals(const EdgeInsets.all(8)));
      expect(decoration.color, equals(InsightsColors.secondary));
      expect(decoration.borderRadius, equals(BorderRadius.circular(8)));
      expect(
          decoration.border,
          equals(
            Border.all(
              width: 4,
              color: InsightsColors.primary,
            ),
          ));
      expect(size.height, 60 + 16);
      expect(size.width, 240 + 16);
      expect(
          textStyle,
          InsightsTextStyles.kH6.copyWith(
            color: InsightsColors.primary,
          ));
    });

    testWidgets(
        'Make sure that the disabled button with parameters styles values',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        widgetTestBase(
            widget: const InsightsMainButton(
          buttonText: 'label_test',
          style: InsightsMainButtonStyle(
            height: 60,
            width: 240,
            radius: 8,
            borderWidth: 4,
            backgroundColor: InsightsColors.secondary,
            borderColor: InsightsColors.primary,
            textColor: InsightsColors.primary,
            textStyle: InsightsTextStyles.kH6,
            margin: EdgeInsets.all(8),
          ),
        )),
      );

      final Size size = tester.getSize(find.byType(InsightsMainButton));
      final Container container =
          tester.firstWidget<Container>(find.byType(Container));
      final BoxDecoration decoration = container.decoration as BoxDecoration;
      final TextStyle textStyle =
          tester.firstWidget<Text>(find.byType(Text)).style as TextStyle;

      expect(container.margin, equals(const EdgeInsets.all(8)));
      expect(decoration.color, equals(InsightsColors.disabled));
      expect(decoration.borderRadius, equals(BorderRadius.circular(8)));
      expect(
          decoration.border,
          equals(
            Border.all(
              width: 4,
              color: InsightsColors.contrast,
            ),
          ));
      expect(size.height, 60 + 16);
      expect(size.width, 240 + 16);
      expect(
          textStyle,
          InsightsTextStyles.kH6.copyWith(
            color: InsightsColors.contrast,
          ));
    });
  });
}
