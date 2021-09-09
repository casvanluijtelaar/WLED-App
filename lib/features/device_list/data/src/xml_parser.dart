import 'package:flutter/rendering.dart';
import 'package:injectable/injectable.dart';
import 'package:wled_app/features/device_list/data/models/xml_api_reponse.dart';
import 'package:xml/xml.dart';

class ParseException implements Exception {}

@injectable
class XmlParser {

  XmlApiResponse parseXml(String xml) {
    try {
      final document = XmlDocument.parse(xml);

      final name = document.getElement('ds')?.text ??
          document.getElement('desc')?.text ??
          '';

      final brightnessText = document.getElement('ac')?.text ??
          document.getElement('act')?.text ??
          '';

      final brightness = double.tryParse(brightnessText) ?? 0;

      final colorList = document
          .findAllElements('cl')
          .map((c) => (int.tryParse(c.text) ?? 0 / 255).round())
          .toList();

      final color = Color.fromRGBO(
        colorList[0],
        colorList[1],
        colorList[2],
        1,
      );

      return XmlApiResponse(
        brightness: brightness,
        isOn: brightness > 0,
        color: color,
        name: name,
      );
    } catch (e) {
      throw ParseException();
    }
  }
  
}
