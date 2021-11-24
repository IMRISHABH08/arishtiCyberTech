import 'package:arishti_assignment/common/utils.dart';
import 'package:arishti_assignment/db/db.dart';
import 'package:arishti_assignment/providers/providers.dart';
import 'package:arishti_assignment/screens/user_data_submit/user_data_submit.dart';
import 'package:arishti_assignment/styles/text_styles/text_styles.dart';
import 'package:arishti_assignment/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Login extends HookWidget {
  Login({Key? key}) : super(key: key);
  final _userKey = GlobalKey<FormState>();
  final userFocusNode = FocusNode();

  final db = DB();
  final FocusNode _phoneNumberFocus = FocusNode();
  final FocusNode _passwdFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    final textStyle = useProvider(textStyleProvider).state;
    final connectionStatus = useProvider(connectionStateProvider);
    final colors = useProvider(colorsProvider);
    final loginProvider = useProvider(loginStateProvider);
    final phoneNumberController = useTextEditingController();
    final passwdController = useTextEditingController();
    final isMounted = useIsMounted();
    useEffect(() {
      if (isMounted()) {
        context.read(connectionStateProvider.notifier).connectionCheck();
        Future.delayed(Duration.zero, () {
          // context
          //     .read(colorsProvider.notifier)
          //     .changeAppTheme(THEME_MODE.light);
        });
      }
      return () {
        // phoneNumberController.dispose();
        // passwdController.dispose();
      };
    }, const []);
    return Container(
      child: SafeArea(
        child: Scaffold(
            backgroundColor: colors.background,
            body: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(children: [
                        // Padding(
                        //   padding: const EdgeInsets.all(20.0),
                        //   child: Image.asset(
                        //     'assets/images/arishti.png',
                        //     //fit: BoxFit.contain,
                        //     //height: 150,
                        //   ),
                        // ),
                        const SizedBox(
                          height: 30,
                        ),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.login,
                                      ),
                                    ),
                                    Text('Enter Your Login Credentials',
                                        style: textStyle.openSansSemiBold
                                            .copyWith(color: colors.darkFont))
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                ),
                                Form(
                                    key: _userKey,
                                    child: Column(
                                      children: [
                                        phoneNumberTextField(
                                            textStyle,
                                            _userKey,
                                            phoneNumberController, (value) {
                                          FocusScope.of(context).unfocus();
                                          _userKey.currentState!.validate();
                                        }, _phoneNumberFocus, context),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        passwdTextField(textStyle, _userKey,
                                            passwdController, (value) {
                                          FocusScope.of(context).unfocus();
                                          _userKey.currentState!.validate();
                                        }, _passwdFocus, context)
                                      ],
                                    )),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, bottom: 40),
                                  child: CustomizedButton(
                                    isLoading: loginProvider.isLoading,
                                    title: 'Login',
                                    onPressed: () async {
                                      FocusScope.of(context).unfocus();
                                      if (_userKey.currentState!.validate()) {
                                        db.storeUserCredentials(
                                            phoneNumberController.text,
                                            passwdController.text);
                                        Get.offAll(() => UserDataSubmit());
                                      }
                                    },
                                    height: 46,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    textStyle: textStyle.openSansSemiBold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ]),
                    ],
                  )),
                ),
                if (!connectionStatus.isConnected)
                  Center(
                    child: Container(
                      alignment: Alignment.center,
                      height: double.maxFinite,
                      width: double.maxFinite,
                      color: Colors.white,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const CircularProgressIndicator(),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(connectionStatus.connectionStatusMessage),
                        ],
                      ),
                    ),
                  )
              ],
            )),
      ),
    );
  }
}

Widget phoneNumberTextField(
    TextStyles textStyle,
    GlobalKey<FormState> key,
    TextEditingController controller,
    ValueChanged<String> onFieldSubmitted,
    FocusNode focusNode,
    BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: controller,
          keyboardType: TextInputType.number,
          validator: validatePhoneNumber,
          focusNode: focusNode,
          decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)),
              filled: true,
              label: const Text('Phone Number'),
              prefixIcon: const Icon(Icons.smartphone)),
          onFieldSubmitted: (value) {
            FocusScope.of(context).unfocus();
            key.currentState!.validate();
          },
        ),
      ],
    ),
  );
}

Widget passwdTextField(
    TextStyles textStyle,
    GlobalKey<FormState> key,
    TextEditingController controller,
    ValueChanged<String> onFieldSubmitted,
    FocusNode focusNode,
    BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: controller,
          validator: validatePassword,
          obscureText: true,
          focusNode: focusNode,
          decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)),
              filled: true,
              label: const Text('Password'),
              prefixIcon: const Icon(Icons.lock)),
          onFieldSubmitted: (value) {
            FocusScope.of(context).unfocus();
            key.currentState!.validate();
          },
        ),
      ],
    ),
  );
}
