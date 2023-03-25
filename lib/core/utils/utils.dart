import 'package:flutter/cupertino.dart'; 

class AppUtils {
  static String? emptyTextValidate(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Lütfen doldurunuz";
    }
    return null;
  }

  static void closeKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }
 
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
