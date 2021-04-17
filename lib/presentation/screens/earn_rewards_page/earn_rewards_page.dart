import 'package:coherence_app/presentation/common_widgets/kHugeButton.dart';
import 'package:coherence_app/presentation/screens/deposit_rewards/deposit_rewards_page.dart';
import 'package:coherence_app/presentation/screens/education_rewards/education_rewards_page.dart';
import 'package:coherence_app/presentation/screens/homepage/home_page.dart';
import 'package:coherence_app/presentation/screens/investment_rewards/investment_rewards_page.dart';
import 'package:coherence_app/presentation/screens/sharing_rewards/sharing_rewards_page.dart';
import 'package:coherence_app/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class EarnRewardsPage extends StatelessWidget {
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                      icon: Icon(FontAwesomeIcons.arrowLeft,
                          size: 20.0, color: kSecondaryColor),
                      onPressed: () => Get.back()),
                ),
                SizedBox(height: 5.0),
                Center(
                  child: Text('Earn Rewards',
                      style: GoogleFonts.merriweatherSans(
                          textStyle: TextStyle(
                              fontSize: 30.0,
                              color: kSecondaryColor,
                              letterSpacing: 0.8,
                              fontWeight: FontWeight.w700))),
                ),
                SizedBox(height: 40.0),
                KHugeBUtton(
                    title: "Deposit Money",
                    subTitle: "Get a match from your client",
                    onPressed: () => Get.to(DepositRewardsPage())),
                SizedBox(height: 20.0),
                KHugeBUtton(
                    title: "Invest Your Savings",
                    subTitle: "Get 1 free stock",
                    onPressed: () => Get.to(InvestmentRewardsPage())),
                SizedBox(height: 20.0),
                KHugeBUtton(
                    title: "Share With Your Friends",
                    subTitle: "Get coupons for health products",
                    onPressed: () => Get.to(SharingRewardsPage())),
                SizedBox(height: 20.0),
                KHugeBUtton(
                    title: "Learn about HSA's",
                    subTitle: "Get coupons for health products",
                    onPressed: () => Get.to(EducationRewardsPage())),
                SizedBox(height: 20.0),
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
