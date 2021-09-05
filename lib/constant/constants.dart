import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF7C83FD);
const ksecondaryColor = Color(0xFFDBE6FD);
const kTextColor = Color(0xFF50505D);
const kTextLightColor = Color(0xFF6A727D);

const kTextFieldDecoration = InputDecoration(
  filled: true,
  floatingLabelBehavior: FloatingLabelBehavior.never,
  fillColor: Colors.white,
  hintStyle: TextStyle(color: Colors.black54),
  contentPadding:
  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kPrimaryColor, width: 1.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kPrimaryColor, width: 3.0),
  ),
);

Color getButtonColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return ksecondaryColor;
  }
  return kPrimaryColor;
}
double getButtonElevation(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return 0;
  }
  return 0;
}