// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "deviceAddIpErrorEmpty":
            MessageLookupByLibrary.simpleMessage("Ip cannot be Empty"),
        "deviceAddIpErrorInvalid":
            MessageLookupByLibrary.simpleMessage("Ip is not valid"),
        "deviceAddIpHint":
            MessageLookupByLibrary.simpleMessage("192.168.0.191"),
        "deviceAddIpTitle": MessageLookupByLibrary.simpleMessage("Ip address"),
        "deviceAddNameErrorToLong": MessageLookupByLibrary.simpleMessage(
            "Name is to long. Max 40 characters"),
        "deviceAddNameHelper": MessageLookupByLibrary.simpleMessage(
            "Optional. This name will overwrite the WLED device name"),
        "deviceAddNameHint": MessageLookupByLibrary.simpleMessage("Bedroom"),
        "deviceAddNameTitle":
            MessageLookupByLibrary.simpleMessage("Custom name*"),
        "deviceAddSubmit": MessageLookupByLibrary.simpleMessage("Add device"),
        "deviceAddTitle":
            MessageLookupByLibrary.simpleMessage("Add new device"),
        "deviceLidtOptionsDeleteDisc": MessageLookupByLibrary.simpleMessage(
            "Remove this device from memory"),
        "deviceListAction":
            MessageLookupByLibrary.simpleMessage("Add a new device"),
        "deviceListAdd": MessageLookupByLibrary.simpleMessage("Add device"),
        "deviceListLoading": MessageLookupByLibrary.simpleMessage(
            "automatic discovery not supported on windows, add it manually"),
        "deviceListOptionsDelete":
            MessageLookupByLibrary.simpleMessage("Delete"),
        "deviceListOptionsEdit": MessageLookupByLibrary.simpleMessage("Edit"),
        "deviceListOptionsEditDisc":
            MessageLookupByLibrary.simpleMessage("Change device settings"),
        "deviceListOptionsSave": MessageLookupByLibrary.simpleMessage("Save"),
        "deviceListOptionsSaveDisc":
            MessageLookupByLibrary.simpleMessage("Remember this device"),
        "deviceListPowerOff": MessageLookupByLibrary.simpleMessage("off"),
        "deviceListRefresh": MessageLookupByLibrary.simpleMessage("Refresh"),
        "deviceListTitle": MessageLookupByLibrary.simpleMessage("Devices")
      };
}
