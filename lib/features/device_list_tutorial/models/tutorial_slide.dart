import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

part 'tutorial_slide.freezed.dart';


@freezed
class TutorialSlide with _$TutorialSlide {
  const factory TutorialSlide({
    required GlobalKey widgetKey,
    @Default(ContentAlign.bottom) ContentAlign alignment,
    @Default('') String description,
    VoidCallback? onPressed,
  }) = _TutorialSlide;
}
