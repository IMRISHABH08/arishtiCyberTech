import 'package:arishti_assignment/screens/authentication/login/login_page.dart';
import 'package:arishti_assignment/screens/home/home.dart';
import 'package:arishti_assignment/screens/user_data_submit/user_data_submit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'db/db.dart';

final db = DB();
bool login = false;
bool formsubmitted = false;
void main() async {
  await db.initDatabase();
  await islogin;
  await issubmit;
  runApp(const ProviderScope(child: MyApp()));
}

Future<bool> get islogin async {
  login = await db.isLogin();
  return login;
}

Future<bool> get issubmit async {
  formsubmitted= await db.isSubmitted();
  return formsubmitted;
}

class MyApp extends HookWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xFFFFFFFF),
    ));
    return GetMaterialApp(
      title: "arishti userapp ",
      debugShowCheckedModeBanner: false,
      home: login
          ? formsubmitted
              ? HomePage()
              : UserDataSubmit()
          : Login(),
    );
  }
}
