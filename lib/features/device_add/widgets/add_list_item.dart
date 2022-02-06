import 'package:flutter/material.dart';
import 'package:wled/core/core.dart';

class AddListItem extends StatelessWidget {
  const AddListItem({
    Key? key,
    required this.text,
    this.size = 50,
    this.selected = false,
    this.padding = 5,
  }) : super(key: key);

  final double size;
  final bool selected;
  final String text;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: DecoratedBox(
        decoration: BoxDecoration(
         
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(Kpadding.small),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'WLED',
                style: context.theme.textTheme.bodyText2,
              ),
              Text(
                '192.168.0.191',
                style: context.theme.textTheme.bodyText1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
