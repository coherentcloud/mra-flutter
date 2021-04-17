import 'package:coherence_app/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class KHugeBUtton extends StatelessWidget {
  final String title;
  final String subTitle;
  final Function onPressed;

  KHugeBUtton({
    @required this.title,
    @required this.subTitle,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(height: 80, width: Get.width - 50),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: kSecondaryColor.withOpacity(0.8),
            shape: RoundedRectangleBorder(
                side: BorderSide(color: kTextColor2, width: 1),
                borderRadius: BorderRadius.circular(20.0))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                fontSize: 18.0,
                color: kTextColor2.withOpacity(0.8),
                fontWeight: FontWeight.w400,
                letterSpacing: 1,
              )),
            ),
            Text(
              subTitle,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 15.0,
                    color: kPrimaryColor,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w400),
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
        onPressed: onPressed,
      ),
    );
  }
}
