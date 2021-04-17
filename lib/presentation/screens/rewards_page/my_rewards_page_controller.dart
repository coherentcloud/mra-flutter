import 'package:coherence_app/utilities/colors.dart';
import 'package:coherence_app/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyRewardsPageController extends GetxController {
  void showBottomSheet() {
    Get.bottomSheet(
        Container(
          color: Colors.black45,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              GestureDetector(
                onTap: () => Get.back(),
                child: Container(
                    height: 35.0,
                    width: double.infinity,
                    color: Colors.black87,
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Text("Done",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: kTextColor2))))),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                child: Text("Walgreens", style: kBottomSheetTextStyle),
              ),
              Divider(height: 8.0, color: kSecondaryColor),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                child: Text("Target", style: kBottomSheetTextStyle),
              ),
              Divider(height: 8.0, color: kSecondaryColor),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                child: Text("CVS", style: kBottomSheetTextStyle),
              ),
              Divider(height: 8.0, color: kSecondaryColor),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                child: Text("Walmart", style: kBottomSheetTextStyle),
              ),
              Divider(height: 8.0, color: kSecondaryColor),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                child: Text("Rite Aid", style: kBottomSheetTextStyle),
              ),
              SizedBox(height: 15.0),
            ],
          ),
        ),
        backgroundColor: kTextColor2,
        barrierColor: kTextColor2.withOpacity(0.3));
  }
}
