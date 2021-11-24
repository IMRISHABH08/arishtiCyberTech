import 'package:arishti_assignment/models/api_response/network_button_data/network_button_data.dart';
import 'package:arishti_assignment/providers/providers.dart';
import 'package:arishti_assignment/styles/colors/colors_state.dart';
import 'package:arishti_assignment/widgets/appbars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:arishti_assignment/widgets/buttons.dart';

class NetworkDataPage extends HookWidget {
  final NetwotkButtonData? data;

  NetworkDataPage({@required this.data});
  Widget build(BuildContext context) {
    final textStyle = useProvider(textStyleProvider).state;
    final connectionStatus = useProvider(connectionStateProvider);

    final colors = useProvider(colorsProvider);
    final isMounted = useIsMounted();

    useEffect(() {
      if (isMounted()) {
        context.read(connectionStateProvider.notifier).connectionCheck();
        Future.delayed(Duration.zero, () {});
      }
      return;
    }, const []);
    return SafeArea(
        child: Scaffold(
            appBar: appBar(context, 'Network Data', textStyle.openSansMedium),
            body: SingleChildScrollView(
              child: Column(
                children: [
                 showData(data?.data?.name,context,colors,'Name'),
                 showData(data?.data?.rank,context,colors,'Rank'),
                 showData(data?.data?.exchangeId,context,colors,'Exchanged Id'),
                 showData(data?.data?.exchangeUrl,context,colors,'Excchnage Url'),
                 showData(data?.data?.percentTotalVolume,context,colors,'Percent Total Volume'),
                 showData(data?.data?.tradingPairs,context,colors,'Trading Pairs'),
                 showData(data?.data?.volumeUsd,context,colors,'Volume ID'),
                 showData(data?.data?.socket.toString(),context,colors,'Socket'),
                 showData(data?.data?.updated.toString(),context,colors,'Updated'),
                 showData(data?.timestamp.toString(),context,colors,'TimeStamp'),
                ],
              ),
            )));
  }
}

Widget showData(String? data,BuildContext context,ColorsState colors,String field) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8),
      height: MediaQuery.of(context).size.height * 0.1,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colors.fontDarkPrimary.withOpacity(0.1),
      ),
      child: Text('$field  ======>  $data '),
    ),
  );
}
