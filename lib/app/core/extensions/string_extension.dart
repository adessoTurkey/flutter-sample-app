import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../constants/env_constants.dart';

extension StringExtension on String {
  bool get isValid => (isNotEmpty);

  String get toImageUrl =>
      "${dotenv.get(EnvConstants.imageUrl)}$this";
}