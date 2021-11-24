import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data_state.freezed.dart';

@freezed
class UserDataState with _$UserDataState {
  const factory UserDataState({
    @Default(false) bool isLoading,
  }) = _Default;
}
