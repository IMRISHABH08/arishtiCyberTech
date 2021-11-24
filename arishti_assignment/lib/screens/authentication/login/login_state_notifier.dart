import 'package:arishti_assignment/db/db.dart';
import 'package:arishti_assignment/network/api_service/api_service.dart';
import 'package:arishti_assignment/providers/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'login_state.dart';

class LoginStateNotifier extends StateNotifier<LoginState> {
  final ProviderReference ref;
  LoginStateNotifier(this.ref) : super(const LoginState());

  API get api {
    return ref.read(apiProvider);
  }

  DB get db {
    return ref.read(dbProvider);
  }

  // Future<LoginResponseModel?> submit(String number, String passWord) async {
  //   state = state.copyWith(isLoading: true);
  //   final response = await api.login(number, passWord);
  //   if (response != null) {
  //     db.storeToken(
  //       response.token,
  //     );
  //   }
  //   state = state.copyWith.call(isLoading: false);
  //   return response;
  // }
}
