import 'package:coherence_app/presentation/common_widgets/kBigButton.dart';
import 'package:coherence_app/presentation/common_widgets/kTextField.dart';
import 'package:coherence_app/presentation/screens/homepage/home_page.dart';
import 'package:coherence_app/utilities/colors.dart';
import 'package:coherence_app/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FitnessRewardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [kPrimaryColor, kSecondaryColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ScrollConfiguration(
          behavior: ScrollBehavior()
            ..buildViewportChrome(context, null, AxisDirection.down),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.0),
                IconButton(
                    icon: Icon(FontAwesomeIcons.arrowLeft,
                        size: 20.0, color: kSecondaryColor),
                    onPressed: () => Get.back()),
                SizedBox(height: 5.0),
                Center(
                  child: Text('Fitness Goals',
                      style: GoogleFonts.merriweatherSans(
                          textStyle: TextStyle(
                              fontSize: 30.0,
                              color: kSecondaryColor,
                              letterSpacing: 0.8,
                              fontWeight: FontWeight.w700))),
                ),
                SizedBox(height: 30.0),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Daily Average Step Goal:',
                          style: kMyRewardsTextStyle1),
                      SizedBox(height: 6.0),
                      Text('10,000', style: kMyRewardsTextStyle2),
                      Divider(color: kSecondaryColor, thickness: 2),
                      SizedBox(height: 15.0),
                      Text('YTD daily average steps:',
                          style: kMyRewardsTextStyle1),
                      SizedBox(height: 6.0),
                      Text('11,887', style: kMyRewardsTextStyle2),
                      SizedBox(height: 5.0),
                      Divider(color: kSecondaryColor, thickness: 2),
                      SizedBox(height: 5.0),
                      Text('Employer Match Reward Through May, 2021',
                          style: kMyRewardsTextStyle1),
                      SizedBox(height: 6.0),
                      Text('\$225.00', style: kMyRewardsTextStyle2),
                      SizedBox(height: 5.0),
                      Divider(color: kSecondaryColor, thickness: 2),
                      SizedBox(height: 25.0),
                      KBigButton(
                          text: "Confirm",
                          onPressed: () => Get.offAll(HomePage())),
                      SizedBox(height: 15.0),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: GestureDetector(
          onTap: () => Get.offAll(HomePage()),
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image(
                  image: AssetImage("images/white.png"),
                  height: 60.0,
                ),
                SizedBox(width: 10.0),
                Text(
                  'Main Menu',
                  style: GoogleFonts.merriweatherSans(
                      textStyle: TextStyle(
                          fontSize: 18.0,
                          color: kTextColor2,
                          fontWeight: FontWeight.w400)),
                ),
                SizedBox(height: 10.0)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
