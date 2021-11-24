// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Default.fromJson(json);
}

/// @nodoc
class _$DataTearOff {
  const _$DataTearOff();

  _Default call(
      {String? exchangeId,
      String? name,
      String? rank,
      String? percentTotalVolume,
      String? volumeUsd,
      String? tradingPairs,
      bool socket = false,
      String? exchangeUrl,
      int? updated}) {
    return _Default(
      exchangeId: exchangeId,
      name: name,
      rank: rank,
      percentTotalVolume: percentTotalVolume,
      volumeUsd: volumeUsd,
      tradingPairs: tradingPairs,
      socket: socket,
      exchangeUrl: exchangeUrl,
      updated: updated,
    );
  }

  Data fromJson(Map<String, Object> json) {
    return Data.fromJson(json);
  }
}

/// @nodoc
const $Data = _$DataTearOff();

/// @nodoc
mixin _$Data {
  String? get exchangeId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get rank => throw _privateConstructorUsedError;
  String? get percentTotalVolume => throw _privateConstructorUsedError;
  String? get volumeUsd => throw _privateConstructorUsedError;
  String? get tradingPairs => throw _privateConstructorUsedError;
  bool get socket => throw _privateConstructorUsedError;
  String? get exchangeUrl => throw _privateConstructorUsedError;
  int? get updated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call(
      {String? exchangeId,
      String? name,
      String? rank,
      String? percentTotalVolume,
      String? volumeUsd,
      String? tradingPairs,
      bool socket,
      String? exchangeUrl,
      int? updated});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? exchangeId = freezed,
    Object? name = freezed,
    Object? rank = freezed,
    Object? percentTotalVolume = freezed,
    Object? volumeUsd = freezed,
    Object? tradingPairs = freezed,
    Object? socket = freezed,
    Object? exchangeUrl = freezed,
    Object? updated = freezed,
  }) {
    return _then(_value.copyWith(
      exchangeId: exchangeId == freezed
          ? _value.exchangeId
          : exchangeId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      rank: rank == freezed
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as String?,
      percentTotalVolume: percentTotalVolume == freezed
          ? _value.percentTotalVolume
          : percentTotalVolume // ignore: cast_nullable_to_non_nullable
              as String?,
      volumeUsd: volumeUsd == freezed
          ? _value.volumeUsd
          : volumeUsd // ignore: cast_nullable_to_non_nullable
              as String?,
      tradingPairs: tradingPairs == freezed
          ? _value.tradingPairs
          : tradingPairs // ignore: cast_nullable_to_non_nullable
              as String?,
      socket: socket == freezed
          ? _value.socket
          : socket // ignore: cast_nullable_to_non_nullable
              as bool,
      exchangeUrl: exchangeUrl == freezed
          ? _value.exchangeUrl
          : exchangeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      updated: updated == freezed
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$DefaultCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DefaultCopyWith(_Default value, $Res Function(_Default) then) =
      __$DefaultCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? exchangeId,
      String? name,
      String? rank,
      String? percentTotalVolume,
      String? volumeUsd,
      String? tradingPairs,
      bool socket,
      String? exchangeUrl,
      int? updated});
}

/// @nodoc
class __$DefaultCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res>
    implements _$DefaultCopyWith<$Res> {
  __$DefaultCopyWithImpl(_Default _value, $Res Function(_Default) _then)
      : super(_value, (v) => _then(v as _Default));

  @override
  _Default get _value => super._value as _Default;

  @override
  $Res call({
    Object? exchangeId = freezed,
    Object? name = freezed,
    Object? rank = freezed,
    Object? percentTotalVolume = freezed,
    Object? volumeUsd = freezed,
    Object? tradingPairs = freezed,
    Object? socket = freezed,
    Object? exchangeUrl = freezed,
    Object? updated = freezed,
  }) {
    return _then(_Default(
      exchangeId: exchangeId == freezed
          ? _value.exchangeId
          : exchangeId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      rank: rank == freezed
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as String?,
      percentTotalVolume: percentTotalVolume == freezed
          ? _value.percentTotalVolume
          : percentTotalVolume // ignore: cast_nullable_to_non_nullable
              as String?,
      volumeUsd: volumeUsd == freezed
          ? _value.volumeUsd
          : volumeUsd // ignore: cast_nullable_to_non_nullable
              as String?,
      tradingPairs: tradingPairs == freezed
          ? _value.tradingPairs
          : tradingPairs // ignore: cast_nullable_to_non_nullable
              as String?,
      socket: socket == freezed
          ? _value.socket
          : socket // ignore: cast_nullable_to_non_nullable
              as bool,
      exchangeUrl: exchangeUrl == freezed
          ? _value.exchangeUrl
          : exchangeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      updated: updated == freezed
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Default implements _Default {
  _$_Default(
      {this.exchangeId,
      this.name,
      this.rank,
      this.percentTotalVolume,
      this.volumeUsd,
      this.tradingPairs,
      this.socket = false,
      this.exchangeUrl,
      this.updated});

  factory _$_Default.fromJson(Map<String, dynamic> json) =>
      _$$_DefaultFromJson(json);

  @override
  final String? exchangeId;
  @override
  final String? name;
  @override
  final String? rank;
  @override
  final String? percentTotalVolume;
  @override
  final String? volumeUsd;
  @override
  final String? tradingPairs;
  @JsonKey(defaultValue: false)
  @override
  final bool socket;
  @override
  final String? exchangeUrl;
  @override
  final int? updated;

  @override
  String toString() {
    return 'Data(exchangeId: $exchangeId, name: $name, rank: $rank, percentTotalVolume: $percentTotalVolume, volumeUsd: $volumeUsd, tradingPairs: $tradingPairs, socket: $socket, exchangeUrl: $exchangeUrl, updated: $updated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Default &&
            (identical(other.exchangeId, exchangeId) ||
                const DeepCollectionEquality()
                    .equals(other.exchangeId, exchangeId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.rank, rank) ||
                const DeepCollectionEquality().equals(other.rank, rank)) &&
            (identical(other.percentTotalVolume, percentTotalVolume) ||
                const DeepCollectionEquality()
                    .equals(other.percentTotalVolume, percentTotalVolume)) &&
            (identical(other.volumeUsd, volumeUsd) ||
                const DeepCollectionEquality()
                    .equals(other.volumeUsd, volumeUsd)) &&
            (identical(other.tradingPairs, tradingPairs) ||
                const DeepCollectionEquality()
                    .equals(other.tradingPairs, tradingPairs)) &&
            (identical(other.socket, socket) ||
                const DeepCollectionEquality().equals(other.socket, socket)) &&
            (identical(other.exchangeUrl, exchangeUrl) ||
                const DeepCollectionEquality()
                    .equals(other.exchangeUrl, exchangeUrl)) &&
            (identical(other.updated, updated) ||
                const DeepCollectionEquality().equals(other.updated, updated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exchangeId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(rank) ^
      const DeepCollectionEquality().hash(percentTotalVolume) ^
      const DeepCollectionEquality().hash(volumeUsd) ^
      const DeepCollectionEquality().hash(tradingPairs) ^
      const DeepCollectionEquality().hash(socket) ^
      const DeepCollectionEquality().hash(exchangeUrl) ^
      const DeepCollectionEquality().hash(updated);

  @JsonKey(ignore: true)
  @override
  _$DefaultCopyWith<_Default> get copyWith =>
      __$DefaultCopyWithImpl<_Default>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DefaultToJson(this);
  }
}

abstract class _Default implements Data {
  factory _Default(
      {String? exchangeId,
      String? name,
      String? rank,
      String? percentTotalVolume,
      String? volumeUsd,
      String? tradingPairs,
      bool socket,
      String? exchangeUrl,
      int? updated}) = _$_Default;

  factory _Default.fromJson(Map<String, dynamic> json) = _$_Default.fromJson;

  @override
  String? get exchangeId => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get rank => throw _privateConstructorUsedError;
  @override
  String? get percentTotalVolume => throw _privateConstructorUsedError;
  @override
  String? get volumeUsd => throw _privateConstructorUsedError;
  @override
  String? get tradingPairs => throw _privateConstructorUsedError;
  @override
  bool get socket => throw _privateConstructorUsedError;
  @override
  String? get exchangeUrl => throw _privateConstructorUsedError;
  @override
  int? get updated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DefaultCopyWith<_Default> get copyWith =>
      throw _privateConstructorUsedError;
}
