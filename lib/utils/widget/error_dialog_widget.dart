import 'package:book_list/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ErrorDialogWidget extends HookWidget {
  final String title;
  final String message;
  final Color color;
  const ErrorDialogWidget({
    super.key,
    this.title = 'Error',
    this.message = 'Unknown Message',
    this.color = AppColor.primaryDarkBlue,
  });

  @override
  Widget build(BuildContext context) {
    void handleClosePressed() {
      Navigator.of(context).pop();
    }

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppMetric.borderRadius),
      ), //this right here
      insetPadding: EdgeInsets.all(AppMetric.defaultHorizontalPadding),
      clipBehavior: Clip.hardEdge,
      child: Container(
        color: Colors.white,
        width: AppMetric.screenWidth,
        padding: EdgeInsets.all(AppMetric.defaultHorizontalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            AppText.headTitle(
              title,
              color: color,
            ),
            SizedBox(height: AppMetric.itemSpacing),
            AppText.small(
              message,
              maxLines: 3,
            ),
            SizedBox(height: AppMetric.sectionSpacing),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                TextButton(
                  onPressed: handleClosePressed,
                  child: AppText.medium(
                    'OK',
                    color: AppColor.primaryDarkBlue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
