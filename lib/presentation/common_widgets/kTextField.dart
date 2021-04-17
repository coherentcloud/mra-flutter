import 'package:coherence_app/utilities/colors.dart';
import 'package:coherence_app/utilities/constants.dart';
import 'package:flutter/material.dart';

class KTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function onChanged;
  final String hintText;

  const KTextField({Key key, this.controller, this.onChanged, this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: kSecondaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: kMyRewardsTextStyle2.copyWith(fontSize: 15.0),
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.zero,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
      onChanged: onChanged,
    );
  }
}
