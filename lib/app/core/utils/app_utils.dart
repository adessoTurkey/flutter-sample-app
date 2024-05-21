import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

abstract final class AppUtils{
  static SnackBar mSnackBar({
    required String title,
    required Color backgroundColor,
    TextStyle? textStyle,
  }) {
    return SnackBar(
      backgroundColor: backgroundColor,
      content: Text(
        title,
        style: textStyle,
      ),
    );
  }


  static Future<void> openLink(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }
}