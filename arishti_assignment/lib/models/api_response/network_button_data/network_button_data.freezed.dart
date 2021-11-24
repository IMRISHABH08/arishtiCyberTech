// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'network_button_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NetwotkButtonData _$NetwotkButtonDataFromJson(Map<String, dynamic> json) {
  return _Default.fromJson(json);
}

/// @nodoc
class _$NetwotkButtonDataTearOff {
  const _$NetwotkButtonDataTearOff();

  _Default call({Data? data, int? timestamp}) {
    return _Default(
      data: data,
      timestamp: timestamp,
    );
  }

  NetwotkButtonData fromJson(Map<String, Object> json) {
    return NetwotkButtonData.fromJson(json);
  }
}

/// @nodoc
const $NetwotkButtonData = _$NetwotkButtonDataTearOff();

/// @nodoc
mixin _$NetwotkButtonData {
  Data? get data => throw _privateConstructorUsedError;
  int? get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NetwotkButtonDataCopyWith<NetwotkButtonData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetwotkButtonDataCopyWith<$Res> {
  factory $NetwotkButtonDataCopyWith(
          NetwotkButtonData value, $Res Function(NetwotkButtonData) then) =
      _$NetwotkButtonDataCopyWithImpl<$Res>;
  $Res call({Data? data, int? timestamp});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$NetwotkButtonDataCopyWithImpl<$Res>
    implements $NetwotkButtonDataCopyWith<$Res> {
  _$NetwotkButtonDataCopyWithImpl(this._value, this._then);

  final NetwotkButtonData _value;
  // ignore: unused_field
  final $Res Function(NetwotkButtonData) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$DefaultCopyWith<$Res>
    implements $NetwotkButtonDataCopyWith<$Res> {
  factory _$DefaultCopyWith(_Default value, $Res Function(_Default) then) =
      __$DefaultCopyWithImpl<$Res>;
  @override
  $Res call({Data? data, int? timestamp});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$DefaultCopyWithImpl<$Res> extends _$NetwotkButtonDataCopyWithImpl<$Res>
    implements _$DefaultCopyWith<$Res> {
  __$DefaultCopyWithImpl(_Default _value, $Res Function(_Default) _then)
      : super(_value, (v) => _then(v as _Default));

  @override
  _Default get _value => super._value as _Default;

  @override
  $Res call({
    Object? data = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_Default(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Default implements _Default {
  _$_Default({this.data, this.timestamp});

  factory _$_Default.fromJson(Map<String, dynamic> json) =>
      _$$_DefaultFromJson(json);

  @override
  final Data? data;
  @override
  final int? timestamp;

  @override
  String toString() {
    return 'NetwotkButtonData(data: $data, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Default &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(timestamp);

  @JsonKey(ignore: true)
  @override
  _$DefaultCopyWith<_Default> get copyWith =>
      __$DefaultCopyWithImpl<_Default>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DefaultToJson(this);
  }
}

abstract class _Default implements NetwotkButtonData {
  factory _Default({Data? data, int? timestamp}) = _$_Default;

  factory _Default.fromJson(Map<String, dynamic> json) = _$_Default.fromJson;

  @override
  Data? get data => throw _privateConstructorUsedError;
  @override
  int? get timestamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DefaultCopyWith<_Default> get copyWith =>
      throw _privateConstructorUsedError;
}
