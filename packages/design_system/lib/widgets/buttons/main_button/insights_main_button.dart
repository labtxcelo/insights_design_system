import 'package:flutter/material.dart';

import '../../../design_system.dart';

class InsightsMainButton extends StatelessWidget {
  final String? buttonText;
  final VoidCallback? onTap;
  final InsightsMainButtonStyle style;

  const InsightsMainButton({
    Key? key,
    this.buttonText,
    this.onTap,
    this.style = const InsightsMainButtonStyle(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: style.height,
      width: style.width,
      margin: style.margin,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: radius,
        border: border,
      ),
      child: Material(
        color: InsightsColors.transparent,
        child: InkWell(
          borderRadius: radius,
          splashColor: style.splashColor.withOpacity(style.splashOpacity),
          onTap: onTap,
          child: Center(
            child: Padding(
              padding: style.padding,
              child: Text(
                buttonText ?? '',
                style: textStyle,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool get hasCallback => onTap != null;

  Color get bgColor =>
      hasCallback ? style.backgroundColor : style.disabledColor;

  Border get border => Border.all(
        width: style.width,
        color: hasCallback ? style.borderColor : InsightsColors.contrast,
      );

  BorderRadius get radius => BorderRadius.circular(style.radius);

  TextStyle get textStyle => style.textStyle.copyWith(
        color: hasCallback ? style.textColor : InsightsColors.contrast,
      );
}
