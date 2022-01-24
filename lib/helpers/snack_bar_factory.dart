import 'package:flutter/material.dart';

class SnackBarFactory {
  static showSnackBar(BuildContext context, String text) {
    WidgetsBinding.instance?.addPostFrameCallback(
      (_) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.black,
          ),
        );
      },
    );
  }

  static showSnackBarKey(GlobalKey<ScaffoldState> key, String text) {
    WidgetsBinding.instance?.addPostFrameCallback(
      (_) {
        key.currentState?.showSnackBar(
          SnackBar(
            content: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.black,
          ),
        );
      },
    );
  }
}
