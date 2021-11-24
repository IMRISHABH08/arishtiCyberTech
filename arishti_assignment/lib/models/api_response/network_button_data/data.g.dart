// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Default _$$_DefaultFromJson(Map<String, dynamic> json) => _$_Default(
      exchangeId: json['exchangeId'] as String?,
      name: json['name'] as String?,
      rank: json['rank'] as String?,
      percentTotalVolume: json['percentTotalVolume'] as String?,
      volumeUsd: json['volumeUsd'] as String?,
      tradingPairs: json['tradingPairs'] as String?,
      socket: json['socket'] as bool? ?? false,
      exchangeUrl: json['exchangeUrl'] as String?,
      updated: json['updated'] as int?,
    );

Map<String, dynamic> _$$_DefaultToJson(_$_Default instance) =>
    <String, dynamic>{
      'exchangeId': instance.exchangeId,
      'name': instance.name,
      'rank': instance.rank,
      'percentTotalVolume': instance.percentTotalVolume,
      'volumeUsd': instance.volumeUsd,
      'tradingPairs': instance.tradingPairs,
      'socket': instance.socket,
      'exchangeUrl': instance.exchangeUrl,
      'updated': instance.updated,
    };
