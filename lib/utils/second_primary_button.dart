import 'package:book_list/utils/utils.dart';
import 'package:flutter/material.dart';

class SecondPrimaryButton extends StatelessWidget {
  const SecondPrimaryButton({
    super.key,
    this.onPressed,
    required this.title,
    this.colors = AppColor.neutralBlack,
    this.colorButton = AppColor.neutralWhite,
  });
  final void Function()? onPressed;
  final String title;
  final Color colors;
  final Color colorButton;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: AppMetric.defaultWidgetSize,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
            horizontal: AppMetric.defaultHorizontalPadding),
        decoration: BoxDecoration(
            border: Border.all(color: colors),
            borderRadius: BorderRadius.circular(AppMetric.borderRadius * 2)),
        child: AppText.button(
          title,
          color: AppColor.neutralBlack,
        ),
      ),
    );
  }
}
