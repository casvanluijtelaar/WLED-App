// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_reponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ApiResponseTearOff {
  const _$ApiResponseTearOff();

  _ApiResponse call(
      {required double brightness,
      required bool isOn,
      required Color color,
      required String name}) {
    return _ApiResponse(
      brightness: brightness,
      isOn: isOn,
      color: color,
      name: name,
    );
  }
}

/// @nodoc
const $ApiResponse = _$ApiResponseTearOff();

/// @nodoc
mixin _$ApiResponse {
  double get brightness => throw _privateConstructorUsedError;
  bool get isOn => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiResponseCopyWith<ApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<$Res> {
  factory $ApiResponseCopyWith(
          ApiResponse value, $Res Function(ApiResponse) then) =
      _$ApiResponseCopyWithImpl<$Res>;
  $Res call({double brightness, bool isOn, Color color, String name});
}

/// @nodoc
class _$ApiResponseCopyWithImpl<$Res> implements $ApiResponseCopyWith<$Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  final ApiResponse _value;
  // ignore: unused_field
  final $Res Function(ApiResponse) _then;

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
abstract class _$ApiResponseCopyWith<$Res>
    implements $ApiResponseCopyWith<$Res> {
  factory _$ApiResponseCopyWith(
          _ApiResponse value, $Res Function(_ApiResponse) then) =
      __$ApiResponseCopyWithImpl<$Res>;
  @override
  $Res call({double brightness, bool isOn, Color color, String name});
}

/// @nodoc
class __$ApiResponseCopyWithImpl<$Res> extends _$ApiResponseCopyWithImpl<$Res>
    implements _$ApiResponseCopyWith<$Res> {
  __$ApiResponseCopyWithImpl(
      _ApiResponse _value, $Res Function(_ApiResponse) _then)
      : super(_value, (v) => _then(v as _ApiResponse));

  @override
  _ApiResponse get _value => super._value as _ApiResponse;

  @override
  $Res call({
    Object? brightness = freezed,
    Object? isOn = freezed,
    Object? color = freezed,
    Object? name = freezed,
  }) {
    return _then(_ApiResponse(
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

@ColorConverter()
class _$_ApiResponse with DiagnosticableTreeMixin implements _ApiResponse {
  const _$_ApiResponse(
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
    return 'ApiResponse(brightness: $brightness, isOn: $isOn, color: $color, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiResponse'))
      ..add(DiagnosticsProperty('brightness', brightness))
      ..add(DiagnosticsProperty('isOn', isOn))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiResponse &&
            (identical(other.brightness, brightness) ||
                other.brightness == brightness) &&
            (identical(other.isOn, isOn) || other.isOn == isOn) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, brightness, isOn, color, name);

  @JsonKey(ignore: true)
  @override
  _$ApiResponseCopyWith<_ApiResponse> get copyWith =>
      __$ApiResponseCopyWithImpl<_ApiResponse>(this, _$identity);
}

abstract class _ApiResponse implements ApiResponse {
  const factory _ApiResponse(
      {required double brightness,
      required bool isOn,
      required Color color,
      required String name}) = _$_ApiResponse;

  @override
  double get brightness;
  @override
  bool get isOn;
  @override
  Color get color;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$ApiResponseCopyWith<_ApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
