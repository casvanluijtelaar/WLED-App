import 'package:flutter/widgets.dart';

class TutorialSlideContent extends StatelessWidget {
  const TutorialSlideContent({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
