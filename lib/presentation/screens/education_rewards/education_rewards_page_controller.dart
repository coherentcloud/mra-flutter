import 'package:coherence_app/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class EducationRewardsPageController extends GetxController {
  Map<String, bool> values = {
    "Whats an HSA?": false,
    "Qualified Expenses": false,
    "Saving for Health": false,
    "Saving for Retirement": false,
    "Investing": false,
    "Taxes": false,
    "Changing Providers": false,
  };

  Widget checkedBox() {
    return ListView(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      children: values.keys.map(
        (String key) {
          return CheckboxListTile(
              title: Text(key,
                  style: GoogleFonts.poppins(textStyle: kMyRewardsTextStyle1)),
              controlAffinity: ListTileControlAffinity.trailing,
              contentPadding: EdgeInsets.zero,
              activeColor: Colors.green[400],
              value: values[key],
              onChanged: (bool val) {
                values[key] = val;
                update();
              });
        },
      ).toList(),
    );
  }
}
