// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tutorial_slide.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TutorialSlideTearOff {
  const _$TutorialSlideTearOff();

  _TutorialSlide call(
      {required GlobalKey<State<StatefulWidget>> widgetKey,
      ContentAlign alignment = ContentAlign.bottom,
      String description = '',
      void Function()? onPressed}) {
    return _TutorialSlide(
      widgetKey: widgetKey,
      alignment: alignment,
      description: description,
      onPressed: onPressed,
    );
  }
}

/// @nodoc
const $TutorialSlide = _$TutorialSlideTearOff();

/// @nodoc
mixin _$TutorialSlide {
  GlobalKey<State<StatefulWidget>> get widgetKey =>
      throw _privateConstructorUsedError;
  ContentAlign get alignment => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  void Function()? get onPressed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TutorialSlideCopyWith<TutorialSlide> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorialSlideCopyWith<$Res> {
  factory $TutorialSlideCopyWith(
          TutorialSlide value, $Res Function(TutorialSlide) then) =
      _$TutorialSlideCopyWithImpl<$Res>;
  $Res call(
      {GlobalKey<State<StatefulWidget>> widgetKey,
      ContentAlign alignment,
      String description,
      void Function()? onPressed});
}

/// @nodoc
class _$TutorialSlideCopyWithImpl<$Res>
    implements $TutorialSlideCopyWith<$Res> {
  _$TutorialSlideCopyWithImpl(this._value, this._then);

  final TutorialSlide _value;
  // ignore: unused_field
  final $Res Function(TutorialSlide) _then;

  @override
  $Res call({
    Object? widgetKey = freezed,
    Object? alignment = freezed,
    Object? description = freezed,
    Object? onPressed = freezed,
  }) {
    return _then(_value.copyWith(
      widgetKey: widgetKey == freezed
          ? _value.widgetKey
          : widgetKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<State<StatefulWidget>>,
      alignment: alignment == freezed
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as ContentAlign,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      onPressed: onPressed == freezed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as void Function()?,
    ));
  }
}

/// @nodoc
abstract class _$TutorialSlideCopyWith<$Res>
    implements $TutorialSlideCopyWith<$Res> {
  factory _$TutorialSlideCopyWith(
          _TutorialSlide value, $Res Function(_TutorialSlide) then) =
      __$TutorialSlideCopyWithImpl<$Res>;
  @override
  $Res call(
      {GlobalKey<State<StatefulWidget>> widgetKey,
      ContentAlign alignment,
      String description,
      void Function()? onPressed});
}

/// @nodoc
class __$TutorialSlideCopyWithImpl<$Res>
    extends _$TutorialSlideCopyWithImpl<$Res>
    implements _$TutorialSlideCopyWith<$Res> {
  __$TutorialSlideCopyWithImpl(
      _TutorialSlide _value, $Res Function(_TutorialSlide) _then)
      : super(_value, (v) => _then(v as _TutorialSlide));

  @override
  _TutorialSlide get _value => super._value as _TutorialSlide;

  @override
  $Res call({
    Object? widgetKey = freezed,
    Object? alignment = freezed,
    Object? description = freezed,
    Object? onPressed = freezed,
  }) {
    return _then(_TutorialSlide(
      widgetKey: widgetKey == freezed
          ? _value.widgetKey
          : widgetKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<State<StatefulWidget>>,
      alignment: alignment == freezed
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as ContentAlign,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      onPressed: onPressed == freezed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as void Function()?,
    ));
  }
}

/// @nodoc

class _$_TutorialSlide with DiagnosticableTreeMixin implements _TutorialSlide {
  const _$_TutorialSlide(
      {required this.widgetKey,
      this.alignment = ContentAlign.bottom,
      this.description = '',
      this.onPressed});

  @override
  final GlobalKey<State<StatefulWidget>> widgetKey;
  @JsonKey(defaultValue: ContentAlign.bottom)
  @override
  final ContentAlign alignment;
  @JsonKey(defaultValue: '')
  @override
  final String description;
  @override
  final void Function()? onPressed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TutorialSlide(widgetKey: $widgetKey, alignment: $alignment, description: $description, onPressed: $onPressed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TutorialSlide'))
      ..add(DiagnosticsProperty('widgetKey', widgetKey))
      ..add(DiagnosticsProperty('alignment', alignment))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('onPressed', onPressed));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TutorialSlide &&
            (identical(other.widgetKey, widgetKey) ||
                const DeepCollectionEquality()
                    .equals(other.widgetKey, widgetKey)) &&
            (identical(other.alignment, alignment) ||
                const DeepCollectionEquality()
                    .equals(other.alignment, alignment)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.onPressed, onPressed) ||
                const DeepCollectionEquality()
                    .equals(other.onPressed, onPressed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(widgetKey) ^
      const DeepCollectionEquality().hash(alignment) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(onPressed);

  @JsonKey(ignore: true)
  @override
  _$TutorialSlideCopyWith<_TutorialSlide> get copyWith =>
      __$TutorialSlideCopyWithImpl<_TutorialSlide>(this, _$identity);
}

abstract class _TutorialSlide implements TutorialSlide {
  const factory _TutorialSlide(
      {required GlobalKey<State<StatefulWidget>> widgetKey,
      ContentAlign alignment,
      String description,
      void Function()? onPressed}) = _$_TutorialSlide;

  @override
  GlobalKey<State<StatefulWidget>> get widgetKey =>
      throw _privateConstructorUsedError;
  @override
  ContentAlign get alignment => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  void Function()? get onPressed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TutorialSlideCopyWith<_TutorialSlide> get copyWith =>
      throw _privateConstructorUsedError;
}
