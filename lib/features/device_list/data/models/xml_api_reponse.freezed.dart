// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'xml_api_reponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$XmlApiResponseTearOff {
  const _$XmlApiResponseTearOff();

  _XmlApiResponse call(
      {required double brightness,
      required bool isOn,
      required Color color,
      required String name}) {
    return _XmlApiResponse(
      brightness: brightness,
      isOn: isOn,
      color: color,
      name: name,
    );
  }
}

/// @nodoc
const $XmlApiResponse = _$XmlApiResponseTearOff();

/// @nodoc
mixin _$XmlApiResponse {
  double get brightness => throw _privateConstructorUsedError;
  bool get isOn => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $XmlApiResponseCopyWith<XmlApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $XmlApiResponseCopyWith<$Res> {
  factory $XmlApiResponseCopyWith(
          XmlApiResponse value, $Res Function(XmlApiResponse) then) =
      _$XmlApiResponseCopyWithImpl<$Res>;
  $Res call({double brightness, bool isOn, Color color, String name});
}

/// @nodoc
class _$XmlApiResponseCopyWithImpl<$Res>
    implements $XmlApiResponseCopyWith<$Res> {
  _$XmlApiResponseCopyWithImpl(this._value, this._then);

  final XmlApiResponse _value;
  // ignore: unused_field
  final $Res Function(XmlApiResponse) _then;

  @override
  $Res call({
    Object? brightness = freezed,
    Object? isOn = freezed,
    Object? color = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      brightness: brightness == freezed
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as double,
      isOn: isOn == freezed
          ? _value.isOn
          : isOn // ignore: cast_nullable_to_non_nullable
              as bool,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$XmlApiResponseCopyWith<$Res>
    implements $XmlApiResponseCopyWith<$Res> {
  factory _$XmlApiResponseCopyWith(
          _XmlApiResponse value, $Res Function(_XmlApiResponse) then) =
      __$XmlApiResponseCopyWithImpl<$Res>;
  @override
  $Res call({double brightness, bool isOn, Color color, String name});
}

/// @nodoc
class __$XmlApiResponseCopyWithImpl<$Res>
    extends _$XmlApiResponseCopyWithImpl<$Res>
    implements _$XmlApiResponseCopyWith<$Res> {
  __$XmlApiResponseCopyWithImpl(
      _XmlApiResponse _value, $Res Function(_XmlApiResponse) _then)
      : super(_value, (v) => _then(v as _XmlApiResponse));

  @override
  _XmlApiResponse get _value => super._value as _XmlApiResponse;

  @override
  $Res call({
    Object? brightness = freezed,
    Object? isOn = freezed,
    Object? color = freezed,
    Object? name = freezed,
  }) {
    return _then(_XmlApiResponse(
      brightness: brightness == freezed
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as double,
      isOn: isOn == freezed
          ? _value.isOn
          : isOn // ignore: cast_nullable_to_non_nullable
              as bool,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_XmlApiResponse
    with DiagnosticableTreeMixin
    implements _XmlApiResponse {
  const _$_XmlApiResponse(
      {required this.brightness,
      required this.isOn,
      required this.color,
      required this.name});

  @override
  final double brightness;
  @override
  final bool isOn;
  @override
  final Color color;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'XmlApiResponse(brightness: $brightness, isOn: $isOn, color: $color, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'XmlApiResponse'))
      ..add(DiagnosticsProperty('brightness', brightness))
      ..add(DiagnosticsProperty('isOn', isOn))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _XmlApiResponse &&
            (identical(other.brightness, brightness) ||
                const DeepCollectionEquality()
                    .equals(other.brightness, brightness)) &&
            (identical(other.isOn, isOn) ||
                const DeepCollectionEquality().equals(other.isOn, isOn)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(brightness) ^
      const DeepCollectionEquality().hash(isOn) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$XmlApiResponseCopyWith<_XmlApiResponse> get copyWith =>
      __$XmlApiResponseCopyWithImpl<_XmlApiResponse>(this, _$identity);
}

abstract class _XmlApiResponse implements XmlApiResponse {
  const factory _XmlApiResponse(
      {required double brightness,
      required bool isOn,
      required Color color,
      required String name}) = _$_XmlApiResponse;

  @override
  double get brightness => throw _privateConstructorUsedError;
  @override
  bool get isOn => throw _privateConstructorUsedError;
  @override
  Color get color => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$XmlApiResponseCopyWith<_XmlApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
