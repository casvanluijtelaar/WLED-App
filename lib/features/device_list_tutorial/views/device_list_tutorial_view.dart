import 'package:flutter/widgets.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import 'package:wled/core/core.dart';

import '../models/tutorial_slide.dart';
import '../widgets/tutorial_slide_content.dart';

class DeviceListTutorial extends StatefulWidget {
  const DeviceListTutorial({
    Key? key,
    required this.slides,
    required this.show,
    required this.child,
  }) : super(key: key);

  final List<TutorialSlide> slides;
  final bool show;
  final Widget child;

  @override
  State<DeviceListTutorial> createState() => _DeviceListTutorialState();
}

class _DeviceListTutorialState extends State<DeviceListTutorial> {
  late final TutorialCoachMark _tutorial;

  @override
  void initState() {
    super.initState();

    if (!widget.show) return;
    final targets = widget.slides.map(_mapSlideToTarget).toList();

    _tutorial = TutorialCoachMark(context, targets: targets, textSkip: 'skip');
    _tutorial.show();
  }

  @override
  void dispose() {
    _tutorial.finish();
    super.dispose();
  }

  /// takes a [slide] and generates all the required data for the
  /// tutorial_coach_mark package
  TargetFocus _mapSlideToTarget(TutorialSlide slide) {
    return TargetFocus(
      identify: slide.widgetKey,
      keyTarget: slide.widgetKey,
      shape: ShapeLightFocus.Circle,
      alignSkip: _mapSlideToSkipAlign(slide),
      contents: [
        TargetContent(
          align: slide.alignment,
          child: TutorialSlideContent(text: slide.description),
        )
      ],
    );
  }

  /// looks at the current position of the referenced widget in this slide and
  /// returns an alignment that tries to prevent overlapping with that widget
  AlignmentGeometry _mapSlideToSkipAlign(TutorialSlide slide) {
    final context = slide.widgetKey.currentContext;
    final renderbox = context?.findRenderObject() as RenderBox?;

    if (renderbox == null) return Alignment.topRight;
    final position = renderbox.localToGlobal(Offset.zero);

    return position.dy > this.context.height / 2
        ? Alignment.topRight
        : Alignment.bottomRight;
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
