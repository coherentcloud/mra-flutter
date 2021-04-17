import 'package:coherence_app/presentation/common_widgets/kHugeButton.dart';
import 'package:coherence_app/presentation/screens/homepage/home_page.dart';
import 'package:coherence_app/utilities/colors.dart';
import 'package:coherence_app/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SharingRewardsPage extends StatelessWidget {
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
                  child: Text('Sharing Rewards',
                      style: GoogleFonts.merriweatherSans(
                          textStyle: TextStyle(
                              fontSize: 30.0,
                              color: kSecondaryColor,
                              letterSpacing: 0.8,
                              fontWeight: FontWeight.w700))),
                ),
                SizedBox(height: 25.0),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Share now and get',
                          style: kMyRewardsTextStyle1.copyWith(fontSize: 20.0)),
                      SizedBox(height: 6.0),
                      Text('a 5% off coupon',
                          style: kMyRewardsTextStyle1.copyWith(fontSize: 20.0)),
                      SizedBox(height: 40.0),
                      _buildSocialIconsPanel(),
                      SizedBox(height: 50.0),
                      KHugeBUtton(
                          title: "Referral Bonus",
                          subTitle: "\$50 off purchase of \$200 or more",
                          onPressed: () {})
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

  Widget _buildSocialIconsPanel() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 60.0,
          width: 60.0,
          color: kTextColor2,
          child: Center(
            child: Icon(FontAwesomeIcons.facebookF,
                size: 35.0, color: kSecondaryColor),
          ),
        ),
        Container(
          height: 60.0,
          width: 60.0,
          color: kTextColor2,
          child: Center(
            child: Icon(FontAwesomeIcons.instagram,
                size: 35.0, color: kSecondaryColor),
          ),
        ),
        Container(
          height: 60.0,
          width: 60.0,
          color: kTextColor2,
          child: Center(
            child: Icon(FontAwesomeIcons.twitter,
                size: 35.0, color: kSecondaryColor),
          ),
        ),
      ],
    );
  }
}
