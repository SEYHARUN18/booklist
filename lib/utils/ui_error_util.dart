import 'package:flutter/material.dart';
import 'package:rxdart/subjects.dart';

import 'widget/error_dialog_widget.dart';

mixin UiErrorUtils {
  // opens snackbar
  static Future<void> openSnackBar(BuildContext context, String message) async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  // subscribes to stream that triggers open snackbar
  static void subscribeToSnackBarStream(
    BuildContext context,
    PublishSubject<Map<String, String>> stream,
  ) {
    if (stream.hasListener) return;
    stream.listen((Map<String, String> payload) {
      showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return ErrorDialogWidget(
            message: payload['message'] ?? 'No error message was given.',
            title: payload['title'] ?? 'Error',
          );
        },
      );
    });
  }
}
