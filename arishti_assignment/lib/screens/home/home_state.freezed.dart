// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _Default call(
      {NetwotkButtonData? networkData,
      bool isLoading = false,
      List<String> listData = const []}) {
    return _Default(
      networkData: networkData,
      isLoading: isLoading,
      listData: listData,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  NetwotkButtonData? get networkData => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<String> get listData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {NetwotkButtonData? networkData, bool isLoading, List<String> listData});

  $NetwotkButtonDataCopyWith<$Res>? get networkData;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? networkData = freezed,
    Object? isLoading = freezed,
    Object? listData = freezed,
  }) {
    return _then(_value.copyWith(
      networkData: networkData == freezed
          ? _value.networkData
          : networkData // ignore: cast_nullable_to_non_nullable
              as NetwotkButtonData?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listData: listData == freezed
          ? _value.listData
          : listData // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }

  @override
  $NetwotkButtonDataCopyWith<$Res>? get networkData {
    if (_value.networkData == null) {
      return null;
    }

    return $NetwotkButtonDataCopyWith<$Res>(_value.networkData!, (value) {
      return _then(_value.copyWith(networkData: value));
    });
  }
}

/// @nodoc
abstract class _$DefaultCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$DefaultCopyWith(_Default value, $Res Function(_Default) then) =
      __$DefaultCopyWithImpl<$Res>;
  @override
  $Res call(
      {NetwotkButtonData? networkData, bool isLoading, List<String> listData});

  @override
  $NetwotkButtonDataCopyWith<$Res>? get networkData;
}

/// @nodoc
class __$DefaultCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$DefaultCopyWith<$Res> {
  __$DefaultCopyWithImpl(_Default _value, $Res Function(_Default) _then)
      : super(_value, (v) => _then(v as _Default));

  @override
  _Default get _value => super._value as _Default;

  @override
  $Res call({
    Object? networkData = freezed,
    Object? isLoading = freezed,
    Object? listData = freezed,
  }) {
    return _then(_Default(
      networkData: networkData == freezed
          ? _value.networkData
          : networkData // ignore: cast_nullable_to_non_nullable
              as NetwotkButtonData?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listData: listData == freezed
          ? _value.listData
          : listData // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_Default implements _Default {
  const _$_Default(
      {this.networkData, this.isLoading = false, this.listData = const []});

  @override
  final NetwotkButtonData? networkData;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> listData;

  @override
  String toString() {
    return 'HomeState(networkData: $networkData, isLoading: $isLoading, listData: $listData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Default &&
            (identical(other.networkData, networkData) ||
                const DeepCollectionEquality()
                    .equals(other.networkData, networkData)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.listData, listData) ||
                const DeepCollectionEquality()
                    .equals(other.listData, listData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(networkData) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(listData);

  @JsonKey(ignore: true)
  @override
  _$DefaultCopyWith<_Default> get copyWith =>
      __$DefaultCopyWithImpl<_Default>(this, _$identity);
}

abstract class _Default implements HomeState {
  const factory _Default(
      {NetwotkButtonData? networkData,
      bool isLoading,
      List<String> listData}) = _$_Default;

  @override
  NetwotkButtonData? get networkData => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  List<String> get listData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DefaultCopyWith<_Default> get copyWith =>
      throw _privateConstructorUsedError;
}
