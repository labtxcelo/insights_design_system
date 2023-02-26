import 'package:flutter/material.dart';

class InsightsMainButtonStyle {
  final Color backgroundColor;
  final Color disabledColor;
  final Color borderColor;
  final Color textColor;
  final Color splashColor;
  final double height;
  final double width;
  final double radius;
  final double borderWidth;
  final double splashOpacity;
  final TextStyle textStyle;
  final EdgeInsets margin;
  final EdgeInsets padding;

  const InsightsMainButtonStyle({
    this.backgroundColor = Colors.black,
    this.disabledColor = Colors.blueGrey,
    this.borderColor = Colors.transparent,
    this.textColor = Colors.white,
    this.splashColor = Colors.grey,
    this.height = 50,
    this.width = 200,
    this.radius = 0,
    this.borderWidth = 0,
    this.splashOpacity = 0.3,
    this.textStyle = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      color: Colors.black,
      height: 1.5,
    ),
    this.margin = EdgeInsets.zero,
    this.padding = EdgeInsets.zero,
  });

  InsightsMainButtonStyle copyWith({
    Color? backgroundColor,
    Color? disabledColor,
    Color? borderColor,
    Color? textColor,
    Color? splashColor,
    double? height,
    double? width,
    double? radius,
    double? borderWidth,
    double? splashOpacity,
    TextStyle? textStyle,
    EdgeInsets? margin,
    EdgeInsets? padding,
  }) {
    return InsightsMainButtonStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      disabledColor: disabledColor ?? this.disabledColor,
      borderColor: borderColor ?? this.borderColor,
      textColor: textColor ?? this.textColor,
      splashColor: splashColor ?? this.splashColor,
      height: height ?? this.height,
      width: width ?? this.width,
      radius: radius ?? this.radius,
      borderWidth: borderWidth ?? this.borderWidth,
      splashOpacity: splashOpacity ?? this.splashOpacity,
      textStyle: textStyle ?? this.textStyle,
      margin: margin ?? this.margin,
      padding: padding ?? this.padding,
    );
  }
}
