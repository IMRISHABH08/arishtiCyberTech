// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'connection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConnectionStateTearOff {
  const _$ConnectionStateTearOff();

  _Default call(
      {bool isConnected = false, String connectionStatusMessage = ""}) {
    return _Default(
      isConnected: isConnected,
      connectionStatusMessage: connectionStatusMessage,
    );
  }
}

/// @nodoc
const $ConnectionState = _$ConnectionStateTearOff();

/// @nodoc
mixin _$ConnectionState {
  bool get isConnected => throw _privateConstructorUsedError;
  String get connectionStatusMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectionStateCopyWith<ConnectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionStateCopyWith<$Res> {
  factory $ConnectionStateCopyWith(
          ConnectionState value, $Res Function(ConnectionState) then) =
      _$ConnectionStateCopyWithImpl<$Res>;
  $Res call({bool isConnected, String connectionStatusMessage});
}

/// @nodoc
class _$ConnectionStateCopyWithImpl<$Res>
    implements $ConnectionStateCopyWith<$Res> {
  _$ConnectionStateCopyWithImpl(this._value, this._then);

  final ConnectionState _value;
  // ignore: unused_field
  final $Res Function(ConnectionState) _then;

  @override
  $Res call({
    Object? isConnected = freezed,
    Object? connectionStatusMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isConnected: isConnected == freezed
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      connectionStatusMessage: connectionStatusMessage == freezed
          ? _value.connectionStatusMessage
          : connectionStatusMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DefaultCopyWith<$Res>
    implements $ConnectionStateCopyWith<$Res> {
  factory _$DefaultCopyWith(_Default value, $Res Function(_Default) then) =
      __$DefaultCopyWithImpl<$Res>;
  @override
  $Res call({bool isConnected, String connectionStatusMessage});
}

/// @nodoc
class __$DefaultCopyWithImpl<$Res> extends _$ConnectionStateCopyWithImpl<$Res>
    implements _$DefaultCopyWith<$Res> {
  __$DefaultCopyWithImpl(_Default _value, $Res Function(_Default) _then)
      : super(_value, (v) => _then(v as _Default));

  @override
  _Default get _value => super._value as _Default;

  @override
  $Res call({
    Object? isConnected = freezed,
    Object? connectionStatusMessage = freezed,
  }) {
    return _then(_Default(
      isConnected: isConnected == freezed
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      connectionStatusMessage: connectionStatusMessage == freezed
          ? _value.connectionStatusMessage
          : connectionStatusMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Default implements _Default {
  _$_Default({this.isConnected = false, this.connectionStatusMessage = ""});

  @JsonKey(defaultValue: false)
  @override
  final bool isConnected;
  @JsonKey(defaultValue: "")
  @override
  final String connectionStatusMessage;

  @override
  String toString() {
    return 'ConnectionState(isConnected: $isConnected, connectionStatusMessage: $connectionStatusMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Default &&
            (identical(other.isConnected, isConnected) ||
                const DeepCollectionEquality()
                    .equals(other.isConnected, isConnected)) &&
            (identical(
                    other.connectionStatusMessage, connectionStatusMessage) ||
                const DeepCollectionEquality().equals(
                    other.connectionStatusMessage, connectionStatusMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isConnected) ^
      const DeepCollectionEquality().hash(connectionStatusMessage);

  @JsonKey(ignore: true)
  @override
  _$DefaultCopyWith<_Default> get copyWith =>
      __$DefaultCopyWithImpl<_Default>(this, _$identity);
}

abstract class _Default implements ConnectionState {
  factory _Default({bool isConnected, String connectionStatusMessage}) =
      _$_Default;

  @override
  bool get isConnected => throw _privateConstructorUsedError;
  @override
  String get connectionStatusMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DefaultCopyWith<_Default> get copyWith =>
      throw _privateConstructorUsedError;
}
