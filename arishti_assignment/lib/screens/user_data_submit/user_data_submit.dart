import 'package:arishti_assignment/common/utils.dart';
import 'package:arishti_assignment/db/db.dart';
import 'package:arishti_assignment/providers/providers.dart';
import 'package:arishti_assignment/screens/home/home.dart';
import 'package:arishti_assignment/styles/text_styles/text_styles.dart';
import 'package:arishti_assignment/widgets/appbars.dart';
import 'package:arishti_assignment/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserDataSubmit extends HookWidget {
  final _userKey = GlobalKey<FormState>();

  final db = DB();

  @override
  Widget build(BuildContext context) {
    final FocusNode _nameFocus = useFocusNode();
    final FocusNode _emailFocus = useFocusNode();
    final FocusNode _contactFocus = useFocusNode();
    final FocusNode _addressFocus = useFocusNode();
    final FocusNode _stateFocus = useFocusNode();
    final FocusNode _cityFocus = useFocusNode();
    final textStyle = useProvider(textStyleProvider).state;
    final connectionStatus = useProvider(connectionStateProvider);
    final userNameController = useTextEditingController();
    final emailController = useTextEditingController();
    final phoneNumberController = useTextEditingController();
    final addressController = useTextEditingController();
    final cityController = useTextEditingController();
    final stateController = useTextEditingController();
    final colors = useProvider(colorsProvider);
    final loginProvider = useProvider(loginStateProvider);
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: colors.background,
        appBar: appBar(context, 'UserData Form', textStyle.openSansRegular),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.person_add,
                                    ),
                                  ),
                                  Text('UserData Form',
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
                                      nameTextField(
                                          textStyle,
                                          _userKey,
                                          userNameController,
                                          _nameFocus,
                                          context),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      emailTextField(
                                          textStyle,
                                          _userKey,
                                          emailController,
                                          _emailFocus,
                                          context),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      phoneNumberTextField(
                                          textStyle,
                                          _userKey,
                                          phoneNumberController,
                                          _contactFocus,
                                          context),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      addressTextField(
                                          textStyle,
                                          _userKey,
                                          addressController,
                                          _addressFocus,
                                          context),
                                      cityTextField(textStyle, _userKey,
                                          cityController, _cityFocus, context),
                                      stateTextField(textStyle, _userKey,
                                          stateController, _stateFocus, context)
                                    ],
                                  )),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                              ),
                            ],
                          ),
                        ),Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 10),
                    child: CustomizedButton(
                      isLoading: loginProvider.isLoading,
                      title: 'Submit',
                      onPressed: () async {
                        FocusScope.of(context).unfocus();
                        if (_userKey.currentState!.validate()) {
                           db.storeUserFormData(
                                    userNameController.text,
                                    phoneNumberController.text,
                                    emailController.text,
                                    addressController.text,
                                    cityController.text,
                                    stateController.text);
                                Get.offAll(() => HomePage());  
                        }
                      },
                      height: 46,
                      width: MediaQuery.of(context).size.width * 0.8,
                      textStyle: textStyle.openSansSemiBold,
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
        ),
      ),
    );
  }
}

Widget phoneNumberTextField(
    TextStyles textStyle,
    GlobalKey<FormState> key,
    TextEditingController controller,
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
            // key.currentState!.validate();
          },
        ),
      ],
    ),
  );
}

Widget addressTextField(
    TextStyles textStyle,
    GlobalKey<FormState> key,
    TextEditingController controller,
    FocusNode focusNode,
    BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: controller,
          validator: validateAddress,
          focusNode: focusNode,
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10)),
            filled: true,
            label: const Text('Address'),
            prefixIcon: const Icon(Icons.home),
          ),
          onFieldSubmitted: (value) {
            FocusScope.of(context).unfocus();
            //key.currentState!.validate();
          },
        ),
      ],
    ),
  );
}

Widget nameTextField(
    TextStyles textStyle,
    GlobalKey<FormState> key,
    TextEditingController controller,
    FocusNode focusNode,
    BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: controller,
          validator: validateName,
          focusNode: focusNode,
          decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)),
              filled: true,
              label: const Text('Name'),
              prefixIcon: const Icon(Icons.person)),
          onFieldSubmitted: (value) {
            FocusScope.of(context).unfocus();
            // key.currentState!.validate();
          },
        ),
      ],
    ),
  );
}

Widget cityTextField(
    TextStyles textStyle,
    GlobalKey<FormState> key,
    TextEditingController controller,
    FocusNode focusNode,
    BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: controller,
          validator: validateCity,
          focusNode: focusNode,
          decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)),
              filled: true,
              label: const Text('City'),
              prefixIcon: const Icon(Icons.location_city)),
          onFieldSubmitted: (value) {
            FocusScope.of(context).unfocus();
            // key.currentState!.validate();
          },
        ),
      ],
    ),
  );
}

Widget stateTextField(
    TextStyles textStyle,
    GlobalKey<FormState> key,
    TextEditingController controller,
    FocusNode focusNode,
    BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: controller,
          validator: validateState,
          focusNode: focusNode,
          decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)),
              filled: true,
              label: const Text('State'),
              prefixIcon: const Icon(Icons.location_city)),
          onFieldSubmitted: (value) {
            FocusScope.of(context).unfocus();
            // key.currentState!.validate();
          },
        ),
      ],
    ),
  );
}

Widget emailTextField(
    TextStyles textStyle,
    GlobalKey<FormState> key,
    TextEditingController controller,
    FocusNode focusNode,
    BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: controller,
          validator: validateEmailAddress,
          focusNode: focusNode,
          decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)),
              filled: true,
              label: const Text('Email'),
              prefixIcon: const Icon(Icons.lock)),
          onFieldSubmitted: (value) {
            FocusScope.of(context).unfocus();
            // key.currentState!.validate();
          },
        ),
      ],
    ),
  );
}
