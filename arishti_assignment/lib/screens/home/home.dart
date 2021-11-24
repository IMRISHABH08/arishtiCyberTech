import 'package:arishti_assignment/providers/providers.dart';
import 'package:arishti_assignment/screens/network_data_screen/network_data_screen.dart';
import 'package:arishti_assignment/widgets/appbars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:arishti_assignment/widgets/buttons.dart';

class HomePage extends HookWidget {
  Widget build(BuildContext context) {
    final textStyle = useProvider(textStyleProvider).state;
    final connectionStatus = useProvider(connectionStateProvider);
    final homeProvider = useProvider(homeStateProvider);
    final colors = useProvider(colorsProvider);
    final isMounted = useIsMounted();
    final textFieldController = useTextEditingController();
    final textFieldFocus = useFocusNode();
    useEffect(() {
      if (isMounted()) {
        context.read(connectionStateProvider.notifier).connectionCheck();
        Future.delayed(Duration.zero, () {});
      }
      return;
    }, const []);
    return homeProvider.isLoading
        ? Container(
            height: double.maxFinite,
            width: double.maxFinite,
            color: colors.background,
            child: const Center(child: CircularProgressIndicator()))
        : SafeArea(
            child: Scaffold(
            appBar: appBar(context, 'Home', textStyle.openSansMedium),
            body: SingleChildScrollView(
              physics: const ScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextField(
                      controller: textFieldController,
                      focusNode: textFieldFocus,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10)),
                        filled: true,
                        hintText: 'Enter Text',
                        hintStyle: textStyle.openSansRegular
                            .copyWith(color: colors.lightFont, fontSize: 12),
                      ),
                      onSubmitted: (_) {
                        textFieldFocus.unfocus();
                      },
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              print('add called');
                              context
                                  .read(homeStateProvider.notifier)
                                  .addText(textFieldController.text);
                            },
                            child: Text('Add')),
                        ElevatedButton(
                            onPressed: () async {
                              var response = await context
                                  .read(homeStateProvider.notifier)
                                  .networkCall(context);

                              // if (response != null) {
                              //   Navigator.of(context).push(MaterialPageRoute(
                              //       builder: (context) =>
                              //           NetworkDataPage(data: response)));
                              // }
                            },
                            child: Text('Network Call')),
                      ],
                    ),
                    Scrollbar(
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              tileColor: colors.darkFont.withOpacity(0.1),
                              title: Text(homeProvider.listData[index]),
                            ),
                          );
                        },
                        itemCount: homeProvider.listData.length,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ));
  }
}
