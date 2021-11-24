import 'package:arishti_assignment/db/db.dart';
import 'package:arishti_assignment/network/api_service/api_service.dart';
import 'package:arishti_assignment/providers/providers.dart';
import 'package:arishti_assignment/screens/user_data_submit/user_data_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserDataStateNotifier extends StateNotifier<UserDataState> {
  final ProviderReference ref;
  UserDataStateNotifier(this.ref) : super(const UserDataState());

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
