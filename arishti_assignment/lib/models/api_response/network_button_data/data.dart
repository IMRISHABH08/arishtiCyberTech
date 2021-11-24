import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    String? exchangeId,
    String? name,
    String? rank,
    String? percentTotalVolume,
    String? volumeUsd,
    String? tradingPairs,
   @Default(false) bool socket,
    String? exchangeUrl,
    int? updated,
  }) = _Default;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
