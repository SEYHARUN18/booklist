import 'package:book_list/utils/utils.dart';
import 'package:flutter/material.dart';

class PrimaryButtonWidget extends StatelessWidget {
  const PrimaryButtonWidget({
    super.key,
    this.onPressed,
    required this.title,
    this.colors = AppColor.primaryDarkBlue,
    this.colorButton = AppColor.neutralWhite,
  });
  final void Function()? onPressed;
  final String title;
  final Color colors;
  final Color colorButton;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: AppMetric.defaultHorizontalPadding),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 55),
          disabledBackgroundColor: AppColor.primaryBlueLighter,
          backgroundColor: colors,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppMetric.borderRadius * 2),
          ),
        ),
        onPressed: onPressed,
        child: AppText.button(
          title,
          color: colorButton,
        ),
      ),
    );
  }
}
