import 'package:book_list/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum FontWeightType { bold, medium, regular }

extension FontWeightTypeExtension on FontWeightType {
  FontWeight type() {
    switch (this) {
      case FontWeightType.bold:
        return FontWeight.w700;
      case FontWeightType.medium:
        return FontWeight.w500;
      case FontWeightType.regular:
        return FontWeight.w400;
    }
  }
}

class AppText extends StatelessWidget {
  final TextStyle? textStyle;
  final String text;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final bool scalable;
  final String? configKey;

  const AppText._(
    this.text, {
    this.textStyle,
    this.textAlign = TextAlign.left,
    this.overflow,
    this.maxLines,
    this.configKey,
    this.scalable = true,
  });
  factory AppText.headTitle(
    String text, {
    Color? color = AppColor.neutralWhite,
    FontWeightType? fontWeight = FontWeightType.medium,
    bool scalable = true,
    String? configKey,
    TextAlign? textAlign,
    int? maxLines,
    double? fontSize = 20.0,
    double? letterSpacing = 0,
  }) {
    return AppText._(
      text,
      textStyle: TextStyle(
        fontWeight: fontWeight?.type(),
        color: color,
        fontSize: fontSize?.sp,
        letterSpacing: letterSpacing?.sp,
      ),
      scalable: scalable,
      configKey: configKey,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
    );
  }

  factory AppText.subTitle(
    String text, {
    Color? color = AppColor.neutralWhite,
    FontWeightType? fontWeight = FontWeightType.medium,
    bool scalable = true,
    String? configKey,
    TextAlign? textAlign,
    int? maxLines,
    double? fontSize = 14.0,
    double? letterSpacing = 0,
  }) {
    return AppText._(
      text,
      textStyle: TextStyle(
        fontWeight: fontWeight?.type(),
        color: color,
        fontSize: fontSize?.sp,
        letterSpacing: letterSpacing?.sp,
      ),
      scalable: scalable,
      configKey: configKey,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
    );
  }

  factory AppText.caption(
    String text, {
    Color? color = AppColor.neutralGreyLight,
    FontWeightType? fontWeight = FontWeightType.bold,
    bool scalable = true,
    String? configKey,
    TextAlign? textAlign,
    int? maxLines,
    double? fontSize = 14,
    double? letterSpacing = 0,
  }) {
    return AppText._(
      text,
      textStyle: TextStyle(
        fontWeight: fontWeight?.type(),
        color: color,
        fontSize: fontSize?.sp,
        letterSpacing: letterSpacing?.sp,
      ),
      scalable: scalable,
      configKey: configKey,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
    );
  }
  factory AppText.button(
    String text, {
    Color? color,
    FontWeightType? fontWeight = FontWeightType.medium,
    bool scalable = true,
    String? configKey,
    TextAlign? textAlign,
    int? maxLines,
    double? fontSize = 17.0,
    double? letterSpacing = 0,
  }) {
    return AppText._(
      text,
      textStyle: TextStyle(
        fontWeight: fontWeight?.type(),
        color: color,
        fontSize: fontSize?.sp,
        letterSpacing: letterSpacing?.sp,
      ),
      scalable: scalable,
      configKey: configKey,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
    );
  }
  factory AppText.small(
    String text, {
    Color? color = AppColor.neutralGrey,
    FontWeightType? fontWeight = FontWeightType.regular,
    bool scalable = true,
    String? configKey,
    TextAlign? textAlign,
    int? maxLines,
    double? fontSize = 13.0,
    double? letterSpacing = 0,
    TextDecoration? decoration,
  }) {
    return AppText._(
      text,
      textStyle: TextStyle(
        fontWeight: fontWeight?.type(),
        color: color,
        fontSize: fontSize?.sp,
        decoration: decoration,
        letterSpacing: letterSpacing?.sp,
      ),
      scalable: scalable,
      configKey: configKey,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
    );
  }
  factory AppText.medium(
    String text, {
    Color? color = AppColor.neutralWhite,
    FontWeightType? fontWeight = FontWeightType.medium,
    bool scalable = true,
    String? configKey,
    TextAlign? textAlign,
    int? maxLines,
    double? fontSize = 14.0,
    double? letterSpacing = 0,
  }) {
    return AppText._(
      text,
      textStyle: TextStyle(
        fontWeight: fontWeight?.type(),
        color: color,
        fontSize: fontSize?.sp,
        letterSpacing: letterSpacing?.sp,
      ),
      scalable: scalable,
      configKey: configKey,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
    );
  }
  factory AppText.smallest(
    String text, {
    Color? color = AppColor.neutralBlack,
    FontWeightType? fontWeight = FontWeightType.regular,
    bool scalable = true,
    String? configKey,
    TextAlign? textAlign,
    int? maxLines,
    double? fontSize = 12.0,
    double? letterSpacing = 0,
  }) {
    return AppText._(
      text,
      textStyle: TextStyle(
        fontWeight: fontWeight?.type(),
        color: color,
        fontSize: fontSize?.sp,
        letterSpacing: letterSpacing?.sp,
      ),
      scalable: scalable,
      configKey: configKey,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
    );
  }

  factory AppText.currency(
    String text, {
    Color? color = AppColor.primaryDarkBlue,
    FontWeightType? fontWeight = FontWeightType.bold,
    bool scalable = true,
    String? configKey,
    TextAlign? textAlign,
    int? maxLines,
    double? fontSize = 36.0,
    double? letterSpacing = 0,
  }) {
    return AppText._(
      text,
      textStyle: TextStyle(
        fontWeight: fontWeight?.type(),
        color: color,
        fontSize: fontSize?.sp,
        letterSpacing: letterSpacing?.sp,
      ),
      scalable: scalable,
      configKey: configKey,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
