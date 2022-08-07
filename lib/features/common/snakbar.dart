import 'package:flutter/material.dart';

final snackBar = SnackBar(
  content: const Text('Yay! A SnackBar!'),
  action: SnackBarAction(
    label: 'Undo',
    onPressed: () {
      // Some code to undo the change.
    },
  ),
);

abstract class AppSnackBars {
  static SnackBar withText(String text) {
    return SnackBar(
      behavior: SnackBarBehavior.floating,
      content: Text(text),
      action: SnackBarAction(
        label: 'ok',
        onPressed: () {
          // Some code to undo the change.
        },
      ),
    );
  }

  static SnackBar withButtonAndText(String text, String label, VoidCallback onPressed) {
    return SnackBar(
      behavior: SnackBarBehavior.floating,
      content: Text(text),
      action: SnackBarAction(
        label: 'ok',
        onPressed: onPressed,
      ),
    );
  }
}
