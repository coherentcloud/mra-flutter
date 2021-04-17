import 'package:coherence_app/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class KBigButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  KBigButton({
    @required this.text,
    @required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(height: 50, width: Get.width - 100),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: kSecondaryColor.withOpacity(0.8),
            shape: RoundedRectangleBorder(
                side: BorderSide(color: kTextColor2, width: 1),
                borderRadius: BorderRadius.circular(20.0))),
        child: Text(
          text,
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            fontSize: 18.0,
            color: kTextColor2.withOpacity(0.9),
            fontWeight: FontWeight.w400,
            letterSpacing: 1,
          )),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
