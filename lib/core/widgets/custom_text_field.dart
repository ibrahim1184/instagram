import 'package:flutter/material.dart';
import '/core/utils/colors.dart';
import '/core/utils/padding.dart';
import '/core/utils/text.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  Widget? prefixIcon;
  Widget? suffixIcon;
  String? hintText;
  String? Function(String?)? validator;
  TextEditingController? controller;
  bool readOnly;
  int? maxLines;
  late bool obscureText;
  TextInputType keyboardType;
  void Function()? suffixOnTap;
 void Function(String)? onChanged;
  TextAlign? textAlign;
  CustomTextField(
      {Key? key,
      this.prefixIcon,
      this.suffixIcon,
      this.hintText,
      this.validator,
      this.controller,
      this.onChanged,
      this.maxLines = 1,
      this.readOnly = false,
      this.obscureText = false,
      this.suffixOnTap,
      this.textAlign = TextAlign.start,
      this.keyboardType = TextInputType.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: CustomPadding.xSmallV),
      child: Theme(
        data: themeData(context),
        child: TextFormField(
          readOnly: readOnly,
          onChanged: onChanged,
          obscureText: obscureText,
          keyboardType: keyboardType,
          validator: validator,
          textAlign: textAlign!,
          controller: controller,
          maxLines: maxLines,
          minLines: 1,
          decoration: InputDecoration(
            hintStyle: CustomText.small(color: ColorRes.inputText),
            prefixIcon: prefixIcon != null
                ? Padding(
                    padding: EdgeInsets.only(
                      left: CustomPadding.largeH,
                      right: CustomPadding.smallH,
                    ),
                    child: prefixIcon,
                  )
                : null,
            contentPadding: EdgeInsets.only(
              left: CustomPadding.mediumH,
              right: 5,
            ),
            suffixIcon: suffixIcon == null
                ? null
                : InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    onTap: suffixOnTap,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: CustomPadding.mediumH,
                        right: CustomPadding.largeH,
                      ),
                      child: suffixIcon,
                    ),
                  ),
            hintText: hintText,
          ),
        ),
      ),
    );
  }
}

InputDecorationTheme inputDecorationTheme() {
  var outlineInputBorder = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(color: Colors.transparent));
  return InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
    floatingLabelBehavior: FloatingLabelBehavior.always,
    filled: true,
    enabledBorder: outlineInputBorder,
    errorMaxLines: 3,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
    fillColor: ColorRes.inputBackground,
  );
}

ThemeData themeData(BuildContext context) {
  return ThemeData(
    inputDecorationTheme: inputDecorationTheme(),
  );
}
