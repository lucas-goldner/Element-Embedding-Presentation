// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Menu`
  String get menu {
    return Intl.message(
      'Menu',
      name: 'menu',
      desc: '',
      args: [],
    );
  }

  /// `Darkmode`
  String get darkMode {
    return Intl.message(
      'Darkmode',
      name: 'darkMode',
      desc: '',
      args: [],
    );
  }

  /// `Slides`
  String get slides {
    return Intl.message(
      'Slides',
      name: 'slides',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Locale`
  String get language {
    return Intl.message(
      'Locale',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Mouse`
  String get mouse {
    return Intl.message(
      'Mouse',
      name: 'mouse',
      desc: '',
      args: [],
    );
  }

  /// `Basic`
  String get basic {
    return Intl.message(
      'Basic',
      name: 'basic',
      desc: '',
      args: [],
    );
  }

  /// `Hidden`
  String get hidden {
    return Intl.message(
      'Hidden',
      name: 'hidden',
      desc: '',
      args: [],
    );
  }

  /// `Custom`
  String get custom {
    return Intl.message(
      'Custom',
      name: 'custom',
      desc: '',
      args: [],
    );
  }

  /// `Flutter on the Web`
  String get presentationTitle {
    return Intl.message(
      'Flutter on the Web',
      name: 'presentationTitle',
      desc: '',
      args: [],
    );
  }

  /// `Made with:`
  String get madeWith {
    return Intl.message(
      'Made with:',
      name: 'madeWith',
      desc: '',
      args: [],
    );
  }

  /// `Element Embedding for Next-Level Websites`
  String get presentationsInFlutter {
    return Intl.message(
      'Element Embedding for Next-Level Websites',
      name: 'presentationsInFlutter',
      desc: '',
      args: [],
    );
  }

  /// `Made by Lucas Goldner`
  String get author {
    return Intl.message(
      'Made by Lucas Goldner',
      name: 'author',
      desc: '',
      args: [],
    );
  }

  /// `Agenda`
  String get agenda {
    return Intl.message(
      'Agenda',
      name: 'agenda',
      desc: '',
      args: [],
    );
  }

  /// `Party 🎉`
  String get party {
    return Intl.message(
      'Party 🎉',
      name: 'party',
      desc: '',
      args: [],
    );
  }

  /// `Motiviation`
  String get motiviation {
    return Intl.message(
      'Motiviation',
      name: 'motiviation',
      desc: '',
      args: [],
    );
  }

  /// `Downsides`
  String get downsides {
    return Intl.message(
      'Downsides',
      name: 'downsides',
      desc: '',
      args: [],
    );
  }

  /// `Really bad`
  String get reallyBad {
    return Intl.message(
      'Really bad',
      name: 'reallyBad',
      desc: '',
      args: [],
    );
  }

  /// `Annoying`
  String get annoying {
    return Intl.message(
      'Annoying',
      name: 'annoying',
      desc: '',
      args: [],
    );
  }

  /// `Lazy`
  String get lazy {
    return Intl.message(
      'Lazy',
      name: 'lazy',
      desc: '',
      args: [],
    );
  }

  /// `Boring`
  String get boring {
    return Intl.message(
      'Boring',
      name: 'boring',
      desc: '',
      args: [],
    );
  }

  /// `Its not Flutter`
  String get notFlutter {
    return Intl.message(
      'Its not Flutter',
      name: 'notFlutter',
      desc: '',
      args: [],
    );
  }

  /// `Benefits`
  String get benefits {
    return Intl.message(
      'Benefits',
      name: 'benefits',
      desc: '',
      args: [],
    );
  }

  /// `Great`
  String get great {
    return Intl.message(
      'Great',
      name: 'great',
      desc: '',
      args: [],
    );
  }

  /// `Awesome`
  String get awesome {
    return Intl.message(
      'Awesome',
      name: 'awesome',
      desc: '',
      args: [],
    );
  }

  /// `Outstanding`
  String get outstanding {
    return Intl.message(
      'Outstanding',
      name: 'outstanding',
      desc: '',
      args: [],
    );
  }

  /// `Amazing`
  String get amazing {
    return Intl.message(
      'Amazing',
      name: 'amazing',
      desc: '',
      args: [],
    );
  }

  /// `Made with Flutter💙`
  String get madeWithFlutter {
    return Intl.message(
      'Made with Flutter💙',
      name: 'madeWithFlutter',
      desc: '',
      args: [],
    );
  }

  /// `Thanks!`
  String get thanks {
    return Intl.message(
      'Thanks!',
      name: 'thanks',
      desc: '',
      args: [],
    );
  }

  /// `https://github.com/lucas-goldner/FlutterShow`
  String get repoLink {
    return Intl.message(
      'https://github.com/lucas-goldner/FlutterShow',
      name: 'repoLink',
      desc: '',
      args: [],
    );
  }

  /// `Side Widget`
  String get sideWidget {
    return Intl.message(
      'Side Widget',
      name: 'sideWidget',
      desc: '',
      args: [],
    );
  }

  /// `Step One`
  String get step1 {
    return Intl.message(
      'Step One',
      name: 'step1',
      desc: '',
      args: [],
    );
  }

  /// `Step Two`
  String get step2 {
    return Intl.message(
      'Step Two',
      name: 'step2',
      desc: '',
      args: [],
    );
  }

  /// `Step Three`
  String get step3 {
    return Intl.message(
      'Step Three',
      name: 'step3',
      desc: '',
      args: [],
    );
  }

  /// `About me`
  String get selfIntroduction {
    return Intl.message(
      'About me',
      name: 'selfIntroduction',
      desc: '',
      args: [],
    );
  }

  /// `🇩🇪🇧🇷\n\n22 years old\n\nUniversity student at HdM\n\nWorking at Bitfactory`
  String get fileOne {
    return Intl.message(
      '🇩🇪🇧🇷\n\n22 years old\n\nUniversity student at HdM\n\nWorking at Bitfactory',
      name: 'fileOne',
      desc: '',
      args: [],
    );
  }

  /// `Programming for 3 years\n\nMostly interested in Flutter and iOS development,\n\nFull stack dev for web development`
  String get fileTwo {
    return Intl.message(
      'Programming for 3 years\n\nMostly interested in Flutter and iOS development,\n\nFull stack dev for web development',
      name: 'fileTwo',
      desc: '',
      args: [],
    );
  }

  /// `Love learning languages❤️‍🔥\n\nCurrently studying Japanese🇯🇵`
  String get fileThree {
    return Intl.message(
      'Love learning languages❤️‍🔥\n\nCurrently studying Japanese🇯🇵',
      name: 'fileThree',
      desc: '',
      args: [],
    );
  }

  /// `What?`
  String get what {
    return Intl.message(
      'What?',
      name: 'what',
      desc: '',
      args: [],
    );
  }

  /// `Flutter Web State Card`
  String get flutterWebStateCard {
    return Intl.message(
      'Flutter Web State Card',
      name: 'flutterWebStateCard',
      desc: '',
      args: [],
    );
  }

  /// `プログレッシブウェブアプリに良い`
  String get flutterWebBenefitProgressiveWebApp {
    return Intl.message(
      'プログレッシブウェブアプリに良い',
      name: 'flutterWebBenefitProgressiveWebApp',
      desc: '',
      args: [],
    );
  }

  /// `シングルページアプリにとっても良い`
  String get flutterWebBenefitSinglePageApp {
    return Intl.message(
      'シングルページアプリにとっても良い',
      name: 'flutterWebBenefitSinglePageApp',
      desc: '',
      args: [],
    );
  }

  /// `ウェッブに既存のアプリリリスしやすい`
  String get flutterWebBenefitEasyWebRelease {
    return Intl.message(
      'ウェッブに既存のアプリリリスしやすい',
      name: 'flutterWebBenefitEasyWebRelease',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ja'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
