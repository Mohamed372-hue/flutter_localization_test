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

  /// `Today's quotes`
  String get title {
    return Intl.message(
      'Today\'s quotes',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `The best way to predict the future is to create it.`
  String get q1 {
    return Intl.message(
      'The best way to predict the future is to create it.',
      name: 'q1',
      desc: '',
      args: [],
    );
  }

  /// `Success is not final, failure is not fatal: It is the courage to continue that counts.`
  String get q2 {
    return Intl.message(
      'Success is not final, failure is not fatal: It is the courage to continue that counts.',
      name: 'q2',
      desc: '',
      args: [],
    );
  }

  /// `Believe you can and you're halfway there.`
  String get q3 {
    return Intl.message(
      'Believe you can and you\'re halfway there.',
      name: 'q3',
      desc: '',
      args: [],
    );
  }

  /// `You don’t have to be great to start, but you have to start to be great.`
  String get q4 {
    return Intl.message(
      'You don’t have to be great to start, but you have to start to be great.',
      name: 'q4',
      desc: '',
      args: [],
    );
  }

  /// `The only way to do great work is to love what you do.`
  String get q5 {
    return Intl.message(
      'The only way to do great work is to love what you do.',
      name: 'q5',
      desc: '',
      args: [],
    );
  }

  /// `In the middle of every difficulty lies opportunity.`
  String get q6 {
    return Intl.message(
      'In the middle of every difficulty lies opportunity.',
      name: 'q6',
      desc: '',
      args: [],
    );
  }

  /// `Your time is limited, so don't waste it living someone else's life.`
  String get q7 {
    return Intl.message(
      'Your time is limited, so don\'t waste it living someone else\'s life.',
      name: 'q7',
      desc: '',
      args: [],
    );
  }

  /// `The journey of a thousand miles begins with one step.`
  String get q8 {
    return Intl.message(
      'The journey of a thousand miles begins with one step.',
      name: 'q8',
      desc: '',
      args: [],
    );
  }

  /// `It is never too late to be what you might have been.`
  String get q9 {
    return Intl.message(
      'It is never too late to be what you might have been.',
      name: 'q9',
      desc: '',
      args: [],
    );
  }

  /// `The future belongs to those who believe in the beauty of their dreams.`
  String get q10 {
    return Intl.message(
      'The future belongs to those who believe in the beauty of their dreams.',
      name: 'q10',
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
      Locale.fromSubtags(languageCode: 'ar'),
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
