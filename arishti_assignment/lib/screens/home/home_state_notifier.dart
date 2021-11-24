import 'package:arishti_assignment/db/db.dart';
import 'package:arishti_assignment/models/api_response/network_button_data/network_button_data.dart';
import 'package:arishti_assignment/network/api_service/api_service.dart';
import 'package:arishti_assignment/providers/providers.dart';
import 'package:arishti_assignment/screens/network_data_screen/network_data_screen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'home_state.dart';

class HomeStateNotifier extends StateNotifier<HomeState> {
  final ProviderReference ref;
  HomeStateNotifier(this.ref) : super(const HomeState());

  API get api {
    return ref.read(apiProvider);
  }

  DB get db {
    return ref.read(dbProvider);
  }

  void addText(String text) {
    List<String> list = state.listData;
    //list.add(text);
    state = state.copyWith.call(isLoading: true);
    //state = state.copyWith.call(listData:list.add(text));
    state = state.copyWith.call(isLoading: true);
  }

  void delete() {}

  Future<NetwotkButtonData?> networkCall(BuildContext ctx) async {
    state = state.copyWith.call(isLoading: true);
    await api.getData().then((value) {
      if (value != null) {
        state = state.copyWith.call(networkData: value);
      }
      state = state.copyWith.call(isLoading: false);
      if (value != null) {
        Navigator.of( ctx).push(MaterialPageRoute(
            builder: (context) => NetworkDataPage(data: value)));
      }
      return value;
    });
  }
}
