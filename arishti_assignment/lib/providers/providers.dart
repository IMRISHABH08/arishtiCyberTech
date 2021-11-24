import 'package:arishti_assignment/connection_status/connection_state.dart';
import 'package:arishti_assignment/connection_status/connection_state_notifier.dart';
import 'package:arishti_assignment/db/db.dart';
import 'package:arishti_assignment/network/api_service/api_service.dart';
import 'package:arishti_assignment/screens/authentication/login/login_state.dart';
import 'package:arishti_assignment/screens/authentication/login/login_state_notifier.dart';
import 'package:arishti_assignment/screens/home/home_state.dart';
import 'package:arishti_assignment/screens/home/home_state_notifier.dart';
import 'package:arishti_assignment/styles/colors/colors_state.dart';
import 'package:arishti_assignment/styles/colors/colors_state_notifier.dart';
import 'package:arishti_assignment/styles/text_styles/text_styles.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final apiProvider = Provider((ref) => API());
final dbProvider = Provider((ref) => DB());

final connectionStateProvider =
    StateNotifierProvider<ConnectionStateNotifier, ConnectionState>(
        (ref) => ConnectionStateNotifier());

final colorsProvider = StateNotifierProvider<ColorStateNotifier, ColorsState>(
    (ref) => ColorStateNotifier());

final textStyleProvider = StateProvider((ref) {
  final colorThemeState = ref.watch(colorsProvider);
  return TextStyles(colors: colorThemeState);
});

final loginStateProvider =
    StateNotifierProvider<LoginStateNotifier, LoginState>(
        (ref) => LoginStateNotifier(ref));

final homeStateProvider =
    StateNotifierProvider<HomeStateNotifier, HomeState>(
        (ref) => HomeStateNotifier(ref));
