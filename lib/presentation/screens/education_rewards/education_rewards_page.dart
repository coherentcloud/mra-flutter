import 'package:coherence_app/presentation/screens/education_rewards/education_rewards_page_controller.dart';
import 'package:coherence_app/presentation/screens/homepage/home_page.dart';
import 'package:coherence_app/utilities/colors.dart';
import 'package:coherence_app/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class EducationRewardsPage extends StatelessWidget {
  final EducationRewardsPageController _educationRewardsPageController =
      Get.put(EducationRewardsPageController());

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
                  child: Text('Education Rewards',
                      style: GoogleFonts.merriweatherSans(
                          textStyle: TextStyle(
                              fontSize: 30.0,
                              color: kSecondaryColor,
                              letterSpacing: 0.8,
                              fontWeight: FontWeight.w700))),
                ),
                SizedBox(height: 20.0),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text('Get a 10% off coupon for:',
                            style: kMyRewardsTextStyle1),
                      ),
                      SizedBox(height: 6.0),
                      Align(
                        alignment: Alignment.center,
                        child: Text('each completed module',
                            style: kMyRewardsTextStyle1),
                      ),
                      SizedBox(height: 25.0),
                      Divider(color: kSecondaryColor, thickness: 2),
                      Container(
                        height: Get.height * 0.45,
                        child: GetBuilder<EducationRewardsPageController>(
                          builder: (_educationRewardsPageController) {
                            return _educationRewardsPageController.checkedBox();
                          },
                        ),
                      ),
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
