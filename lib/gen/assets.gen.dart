/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/eye.svg
  String get eye => 'assets/images/eye.svg';

  /// File path: assets/images/heart.png
  AssetGenImage get heart => const AssetGenImage('assets/images/heart.png');

  /// File path: assets/images/location_icon.svg
  String get locationIcon => 'assets/images/location_icon.svg';

  /// File path: assets/images/login_bg.png
  AssetGenImage get loginBg =>
      const AssetGenImage('assets/images/login_bg.png');

  /// File path: assets/images/login_error_banner.png
  AssetGenImage get loginErrorBanner =>
      const AssetGenImage('assets/images/login_error_banner.png');

  /// File path: assets/images/logo.svg
  String get logo => 'assets/images/logo.svg';

  /// File path: assets/images/no_result.png
  AssetGenImage get noResult =>
      const AssetGenImage('assets/images/no_result.png');

  /// File path: assets/images/poster_1.jpg
  AssetGenImage get poster1 =>
      const AssetGenImage('assets/images/poster_1.jpg');

  /// File path: assets/images/splash_bg.png
  AssetGenImage get splashBg =>
      const AssetGenImage('assets/images/splash_bg.png');

  /// List of all assets
  List<dynamic> get values => [
        eye,
        heart,
        locationIcon,
        loginBg,
        loginErrorBanner,
        logo,
        noResult,
        poster1,
        splashBg
      ];
}

class MovieAssets {
  MovieAssets._();

  static const String package = 'flutter_movie_app';

  static const String genres = 'assets/genres.json';
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const AssetGenImage teams01 = AssetGenImage('assets/teams.01.jpg');

  /// List of all assets
  static List<dynamic> get values => [genres, teams01];
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  static const String package = 'flutter_movie_app';

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    @Deprecated('Do not specify package for a generated library asset')
    String? package = package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    @Deprecated('Do not specify package for a generated library asset')
    String? package = package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => '$_assetName';
}
