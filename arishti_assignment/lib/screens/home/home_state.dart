import 'package:arishti_assignment/models/api_response/network_button_data/network_button_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    NetwotkButtonData? networkData,
    @Default(false) bool isLoading,
    @Default([]) List<String> listData,
  }) = _Default;
}
