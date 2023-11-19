/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/GraphikMedium.otf
  String get graphikMedium => 'assets/fonts/GraphikMedium.otf';

  /// File path: assets/fonts/GraphikRegular.otf
  String get graphikRegular => 'assets/fonts/GraphikRegular.otf';

  /// File path: assets/fonts/GraphikSemibold.otf
  String get graphikSemibold => 'assets/fonts/GraphikSemibold.otf';

  /// List of all assets
  List<String> get values => [graphikMedium, graphikRegular, graphikSemibold];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesCustomGen get custom => const $AssetsImagesCustomGen();
  $AssetsImagesGoldenHammerGen get goldenHammer =>
      const $AssetsImagesGoldenHammerGen();
  $AssetsImagesSharedGen get shared => const $AssetsImagesSharedGen();
  $AssetsImagesTitleSlideGen get titleSlide =>
      const $AssetsImagesTitleSlideGen();
  $AssetsImagesWebsiteReviewGen get websiteReview =>
      const $AssetsImagesWebsiteReviewGen();
}

class $AssetsRiveGen {
  const $AssetsRiveGen();

  /// File path: assets/rive/folder.riv
  String get folder => 'assets/rive/folder.riv';

  /// File path: assets/rive/guy.riv
  String get guy => 'assets/rive/guy.riv';

  /// List of all assets
  List<String> get values => [folder, guy];
}

class $AssetsImagesCustomGen {
  const $AssetsImagesCustomGen();

  /// File path: assets/images/custom/distortion.png
  AssetGenImage get distortion =>
      const AssetGenImage('assets/images/custom/distortion.png');

  /// File path: assets/images/custom/fluttershow.png
  AssetGenImage get fluttershow =>
      const AssetGenImage('assets/images/custom/fluttershow.png');

  /// File path: assets/images/custom/jaspr_logo.png
  AssetGenImage get jasprLogo =>
      const AssetGenImage('assets/images/custom/jaspr_logo.png');

  /// File path: assets/images/custom/qr.png
  AssetGenImage get qr => const AssetGenImage('assets/images/custom/qr.png');

  /// List of all assets
  List<AssetGenImage> get values => [distortion, fluttershow, jasprLogo, qr];
}

class $AssetsImagesGoldenHammerGen {
  const $AssetsImagesGoldenHammerGen();

  /// File path: assets/images/golden_hammer/explosion.png
  AssetGenImage get explosion =>
      const AssetGenImage('assets/images/golden_hammer/explosion.png');

  /// File path: assets/images/golden_hammer/golden_hammer.png
  AssetGenImage get goldenHammer =>
      const AssetGenImage('assets/images/golden_hammer/golden_hammer.png');

  /// List of all assets
  List<AssetGenImage> get values => [explosion, goldenHammer];
}

class $AssetsImagesSharedGen {
  const $AssetsImagesSharedGen();

  /// File path: assets/images/shared/flutter_icon.svg
  SvgGenImage get flutterIcon =>
      const SvgGenImage('assets/images/shared/flutter_icon.svg');

  /// File path: assets/images/shared/gdgtokyo_logo.png
  AssetGenImage get gdgtokyoLogo =>
      const AssetGenImage('assets/images/shared/gdgtokyo_logo.png');

  /// List of all assets
  List<dynamic> get values => [flutterIcon, gdgtokyoLogo];
}

class $AssetsImagesTitleSlideGen {
  const $AssetsImagesTitleSlideGen();

  /// File path: assets/images/title_slide/elizabeth_welcome.png
  AssetGenImage get elizabethWelcome =>
      const AssetGenImage('assets/images/title_slide/elizabeth_welcome.png');

  /// File path: assets/images/title_slide/meiji_jingu.png
  AssetGenImage get meijiJingu =>
      const AssetGenImage('assets/images/title_slide/meiji_jingu.png');

  /// File path: assets/images/title_slide/osaka_castle.png
  AssetGenImage get osakaCastle =>
      const AssetGenImage('assets/images/title_slide/osaka_castle.png');

  /// File path: assets/images/title_slide/tokyo_tower.png
  AssetGenImage get tokyoTower =>
      const AssetGenImage('assets/images/title_slide/tokyo_tower.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [elizabethWelcome, meijiJingu, osakaCastle, tokyoTower];
}

class $AssetsImagesWebsiteReviewGen {
  const $AssetsImagesWebsiteReviewGen();

  /// File path: assets/images/website_review/website_preview.png
  AssetGenImage get websitePreview =>
      const AssetGenImage('assets/images/website_review/website_preview.png');

  /// List of all assets
  List<AssetGenImage> get values => [websitePreview];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsRiveGen rive = $AssetsRiveGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    String? package,
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
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
