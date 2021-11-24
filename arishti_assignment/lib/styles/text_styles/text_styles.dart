import 'package:arishti_assignment/styles/colors/colors_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TextStyles {
  final ColorsState colors;
  TextStyles({required this.colors});

  /*---------------------------OpenSans-Regular--------------------*/

  TextStyle get openSansRegular {
    return TextStyle(
        fontFamily: 'OpenSans-Regular',
        // fontSize: 16,
        // fontWeight: FontWeight.w400,
        color: colors.primary);
  }

  /*---------------------------OpenSans-Medium--------------------*/

  TextStyle get openSansMedium {
    return TextStyle(
      fontFamily: 'OpenSans-Medium', color: colors.primary,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    );
  }

  /*---------------------------OpenSans-SemiBold--------------------*/

  TextStyle get openSansSemiBold {
    return TextStyle(
      fontFamily: 'OpenSans-SemiBold', color: colors.primary,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      // fontWeight: FontWeight.w400,
    );
  }
}
