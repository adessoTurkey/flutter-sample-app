enum ResponsiveType {
  smallMobile(0, 320),
  mediumMobile(320, 360),
  largeMobile(360, 420);

  final double minWidth;
  final double maxwidth;
  const ResponsiveType(this.minWidth, this.maxwidth);
}
