extension StringExtension on String {
  bool get isValid => (isNotEmpty);
}

extension NullableStringExtension on String? {
  String get emptyIfNull => (this ?? "");
}