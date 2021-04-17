import 'package:coherence_app/presentation/common_widgets/kBigButton.dart';
import 'package:coherence_app/presentation/common_widgets/kTextField.dart';
import 'package:coherence_app/presentation/screens/homepage/home_page.dart';
import 'package:coherence_app/utilities/colors.dart';
import 'package:coherence_app/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class InvestmentRewardsPage extends StatelessWidget {
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
                  child: Text('Investment Rewards',
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
                      Row(
                        children: [
                          Text('Get',
                              style: kMyRewardsTextStyle2.copyWith(
                                  color: kTextColor2)),
                          SizedBox(
                              width: 30.0, child: KTextField(hintText: "2")),
                          Text('free stocks for',
                              style: kMyRewardsTextStyle2.copyWith(
                                  color: kTextColor2)),
                        ],
                      ),
                      SizedBox(height: 6.0),
                      Row(
                        children: [
                          Text('Every \$',
                              style: kMyRewardsTextStyle2.copyWith(
                                  color: kTextColor2)),
                          SizedBox(width: 5.0),
                          SizedBox(
                              width: 80.0,
                              child: KTextField(hintText: "500.00")),
                          SizedBox(width: 10.0),
                          Text('moved',
                              style: kMyRewardsTextStyle2.copyWith(
                                  color: kTextColor2)),
                        ],
                      ),
                      SizedBox(height: 6.0),
                      Text('from your HSA to',
                          style: kMyRewardsTextStyle2.copyWith(
                              color: kTextColor2)),
                      SizedBox(height: 6.0),
                      Text('\'My Bank Investment\'',
                          style: kMyRewardsTextStyle2.copyWith(
                              color: kTextColor2)),
                      SizedBox(height: 5.0),
                      Divider(color: kSecondaryColor, thickness: 2),
                      SizedBox(height: 20.0),
                      Row(
                        children: [
                          Text('You have \$',
                              style: kMyRewardsTextStyle2.copyWith(
                                  color: kTextColor2)),
                          SizedBox(width: 6.0),
                          SizedBox(
                              width: 100.0,
                              child: KTextField(hintText: "12,000.00")),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      Text('available to invest',
                          style: kMyRewardsTextStyle2.copyWith(
                              color: kTextColor2)),
                      SizedBox(height: 12.0),
                      Divider(color: kSecondaryColor, thickness: 2),
                      SizedBox(height: 20.0),
                      Text('I would like to invest',
                          style: kMyRewardsTextStyle2.copyWith(
                              color: kTextColor2)),
                      SizedBox(height: 10.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('\$',
                              style: kMyRewardsTextStyle2.copyWith(
                                  color: kTextColor2)),
                          SizedBox(width: 6.0),
                          SizedBox(
                              width: 80.0, child: KTextField(hintText: "00.00"))
                        ],
                      ),
                      SizedBox(height: 35.0),
                      KBigButton(text: "Confirm", onPressed: () {}),
                      SizedBox(height: 20.0),
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
