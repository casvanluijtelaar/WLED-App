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

class Localization {
  Localization();

  static Localization? _current;

  static Localization get current {
    assert(_current != null,
        'No instance of Localization was loaded. Try to initialize the Localization delegate before accessing Localization.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Localization> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Localization();
      Localization._current = instance;

      return instance;
    });
  }

  static Localization of(BuildContext context) {
    final instance = Localization.maybeOf(context);
    assert(instance != null,
        'No instance of Localization present in the widget tree. Did you add Localization.delegate in localizationsDelegates?');
    return instance!;
  }

  static Localization? maybeOf(BuildContext context) {
    return Localizations.of<Localization>(context, Localization);
  }

  /// `Devices`
  String get deviceListTitle {
    return Intl.message(
      'Devices',
      name: 'deviceListTitle',
      desc: '',
      args: [],
    );
  }

  /// `Add a new device`
  String get deviceListAction {
    return Intl.message(
      'Add a new device',
      name: 'deviceListAction',
      desc: '',
      args: [],
    );
  }

  /// `off`
  String get deviceListPowerOff {
    return Intl.message(
      'off',
      name: 'deviceListPowerOff',
      desc: '',
      args: [],
    );
  }

  /// `automatic discovery not supported on windows, add it manually`
  String get deviceListLoading {
    return Intl.message(
      'automatic discovery not supported on windows, add it manually',
      name: 'deviceListLoading',
      desc: '',
      args: [],
    );
  }

  /// `Refresh`
  String get deviceListRefresh {
    return Intl.message(
      'Refresh',
      name: 'deviceListRefresh',
      desc: '',
      args: [],
    );
  }

  /// `Add device`
  String get deviceListAdd {
    return Intl.message(
      'Add device',
      name: 'deviceListAdd',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get deviceListOptionsSave {
    return Intl.message(
      'Save',
      name: 'deviceListOptionsSave',
      desc: '',
      args: [],
    );
  }

  /// `Remember this device`
  String get deviceListOptionsSaveDisc {
    return Intl.message(
      'Remember this device',
      name: 'deviceListOptionsSaveDisc',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get deviceListOptionsEdit {
    return Intl.message(
      'Edit',
      name: 'deviceListOptionsEdit',
      desc: '',
      args: [],
    );
  }

  /// `Change device settings`
  String get deviceListOptionsEditDisc {
    return Intl.message(
      'Change device settings',
      name: 'deviceListOptionsEditDisc',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get deviceListOptionsDelete {
    return Intl.message(
      'Delete',
      name: 'deviceListOptionsDelete',
      desc: '',
      args: [],
    );
  }

  /// `Remove this device from memory`
  String get deviceLidtOptionsDeleteDisc {
    return Intl.message(
      'Remove this device from memory',
      name: 'deviceLidtOptionsDeleteDisc',
      desc: '',
      args: [],
    );
  }

  /// `Add new device`
  String get deviceAddTitle {
    return Intl.message(
      'Add new device',
      name: 'deviceAddTitle',
      desc: '',
      args: [],
    );
  }

  /// `Ip address`
  String get deviceAddIpTitle {
    return Intl.message(
      'Ip address',
      name: 'deviceAddIpTitle',
      desc: '',
      args: [],
    );
  }

  /// `192.168.0.191`
  String get deviceAddIpHint {
    return Intl.message(
      '192.168.0.191',
      name: 'deviceAddIpHint',
      desc: '',
      args: [],
    );
  }

  /// `Ip cannot be Empty`
  String get deviceAddIpErrorEmpty {
    return Intl.message(
      'Ip cannot be Empty',
      name: 'deviceAddIpErrorEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Ip is not valid`
  String get deviceAddIpErrorInvalid {
    return Intl.message(
      'Ip is not valid',
      name: 'deviceAddIpErrorInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Custom name*`
  String get deviceAddNameTitle {
    return Intl.message(
      'Custom name*',
      name: 'deviceAddNameTitle',
      desc: '',
      args: [],
    );
  }

  /// `Bedroom`
  String get deviceAddNameHint {
    return Intl.message(
      'Bedroom',
      name: 'deviceAddNameHint',
      desc: '',
      args: [],
    );
  }

  /// `Name is to long. Max 40 characters`
  String get deviceAddNameErrorToLong {
    return Intl.message(
      'Name is to long. Max 40 characters',
      name: 'deviceAddNameErrorToLong',
      desc: '',
      args: [],
    );
  }

  /// `Optional. This name will overwrite the WLED device name`
  String get deviceAddNameHelper {
    return Intl.message(
      'Optional. This name will overwrite the WLED device name',
      name: 'deviceAddNameHelper',
      desc: '',
      args: [],
    );
  }

  /// `Add device`
  String get deviceAddSubmit {
    return Intl.message(
      'Add device',
      name: 'deviceAddSubmit',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Localization> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'nl'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Localization> load(Locale locale) => Localization.load(locale);
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
