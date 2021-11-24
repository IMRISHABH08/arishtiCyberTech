import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';

part 'network_button_data.freezed.dart';
part 'network_button_data.g.dart';

@freezed
class NetwotkButtonData with _$NetwotkButtonData {
  factory NetwotkButtonData({
    Data? data,
    int? timestamp,
  }) = _Default;

  factory NetwotkButtonData.fromJson(Map<String, dynamic> json) =>
      _$NetwotkButtonDataFromJson(json);
}
