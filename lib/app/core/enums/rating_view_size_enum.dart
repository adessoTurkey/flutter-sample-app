import 'dart:ui';

enum RatingViewSizeEnum {
  large(Size(100, 50), 18, 18),
  medium(Size(80, 50), 16, 16),
  small(Size(75, 50), 14, 12);

  final Size size;
  final double iconSize;
  final double fontSize;
  const RatingViewSizeEnum(this.size, this.iconSize, this.fontSize);
}
