import 'dart:async';

import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import 'connection_state.dart';

class ConnectionStateNotifier extends StateNotifier<ConnectionState> {
  ConnectionStateNotifier() : super(ConnectionState());

  ConnectivityResult connectionStatus = ConnectivityResult.none;
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  Future<void> connectionCheck() async {
    late ConnectivityResult result;
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);

    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      print("ERROR WHILE GETTING CONNECTION STATUS  ${e.toString()}");
      return;
    }
    if (!mounted) {
      return Future.value(null);
    }

    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    connectionStatus = result;
    if (connectionStatus != ConnectivityResult.none) {
      state = state.copyWith.call(
          isConnected: true,
          connectionStatusMessage: connectionStatus.toString());
    } else if (connectionStatus == ConnectivityResult.none) {
      state = state.copyWith.call(
          isConnected: false,
          connectionStatusMessage: connectionStatus.toString());
    }
  }
}
