import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  final String? error;
  const ErrorView({
    super.key,
    this.error,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        error ?? "Custom error",
      ),
    );
  }
}
