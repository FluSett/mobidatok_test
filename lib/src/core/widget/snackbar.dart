import 'package:flutter/material.dart';

void showErrorSnackBar(
  BuildContext context,
  String message,
) {
  final snackBar = SnackBar(
    content: Row(
      children: [
        const Icon(
          Icons.error,
          size: 20,
          color: Colors.red,
        ),
        const SizedBox(width: 3),
        Text(
          ('Error: $message'),
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
      ],
    ),
  );

  ScaffoldMessenger.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(snackBar);
}
