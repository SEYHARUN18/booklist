import 'package:flutter_screenutil/flutter_screenutil.dart';

mixin AppMetric {
  static double defaultHorizontalPadding = 16.sp;
  static double defaultVerticalPadding = 20.sp;

  static double smallSpacing = 4.sp;
  static double regularSpacing = 8.sp;
  static double mediumSpacing = 12.sp;
  static double largeSpacing = 16.sp;

  static double itemSpacing = 10.sp;
  static double widgetSpacing = 20.sp;
  static double sectionSpacing = 30.sp;

  static double minimumWidgetSize = 48.sp;
  static double tabWidgetSize = 37.sp;
  static double defaultWidgetSize = 54.sp;

  static double dividerSize = 1.sp;

  static double borderRadius = 16.sp;
  static double buttonBorderRadius = 28.sp;

  static double screenHeight = ScreenUtil().screenHeight;
  static double screenWidth = ScreenUtil().screenWidth;
}
