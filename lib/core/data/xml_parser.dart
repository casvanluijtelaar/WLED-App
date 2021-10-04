import 'dart:developer';

import 'package:flutter/rendering.dart';
import 'package:injectable/injectable.dart';
import 'package:xml/xml.dart';

import 'models/api_reponse.dart';

class ParseException implements Exception {}

@injectable
class XmlParser {
  ApiResponse parseXml(String xml) {
    try {
      final document = XmlDocument.parse(xml);
      final data = document.getElement('vs')!;
     
      final name = data.getElement('ds')?.text ??
          data.getElement('desc')?.text ??
          '';

      final brightnessText = data.getElement('ac')?.text ??
          data.getElement('act')?.text ??
          '';

      final brightness = double.tryParse(brightnessText) ?? 0;

      final colorList = data
          .findAllElements('cl')
          .map((c) => (int.tryParse(c.text) ?? 0 / 255).round())
          .toList();

      final color = Color.fromRGBO(
        colorList[0],
        colorList[1],
        colorList[2],
        1,
      );

      return ApiResponse(
        brightness: brightness,
        isOn: brightness > 0,
        color: color,
        name: name,
      );
    } catch (e, s) {
      log(e.toString(), stackTrace: s);
      throw ParseException();
    }
  }
}
