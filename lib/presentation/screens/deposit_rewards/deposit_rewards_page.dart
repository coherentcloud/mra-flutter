import 'package:coherence_app/presentation/common_widgets/kBigButton.dart';
import 'package:coherence_app/presentation/common_widgets/kTextField.dart';
import 'package:coherence_app/presentation/screens/homepage/home_page.dart';
import 'package:coherence_app/utilities/colors.dart';
import 'package:coherence_app/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DepositRewardsPage extends StatelessWidget {
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
                  child: Text('Deposit Rewards',
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
                      Text('YTD Deposits:', style: kMyRewardsTextStyle1),
                      SizedBox(height: 6.0),
                      Text('\$2,000.00', style: kMyRewardsTextStyle2),
                      SizedBox(height: 15.0),
                      Text('Remaining This Year:', style: kMyRewardsTextStyle1),
                      SizedBox(height: 6.0),
                      Text('\$4,500.00', style: kMyRewardsTextStyle2),
                      SizedBox(height: 5.0),
                      Divider(color: kSecondaryColor, thickness: 2),
                      SizedBox(height: 5.0),
                      Text('Employee Match Calculator',
                          style: kMyRewardsTextStyle1),
                      SizedBox(height: 6.0),
                      Row(
                        children: [
                          Text('I will contribute: ',
                              style: kMyRewardsTextStyle2.copyWith(
                                  color: kTextColor2, fontSize: 16.0)),
                          Expanded(child: KTextField()),
                        ],
                      ),
                      SizedBox(height: 5.0),
                      Text('Employer will contribute: ',
                          style: kMyRewardsTextStyle2.copyWith(
                              color: kTextColor2, fontSize: 17.0)),
                      SizedBox(height: 6.0),
                      Text('\$00.00', style: kMyRewardsTextStyle2),
                      SizedBox(height: 5.0),
                      Divider(color: kSecondaryColor, thickness: 2),
                      SizedBox(height: 5.0),
                      Text('Deposit Funds', style: kMyRewardsTextStyle1),
                      SizedBox(height: 6.0),
                      Container(
                        width: Get.width * 0.35,
                        child: KTextField(),
                      ),
                      SizedBox(height: 6.0),
                      Row(
                        children: [
                          Text('From: ',
                              style: kMyRewardsTextStyle2.copyWith(
                                  color: kTextColor2, fontSize: 17.0)),
                          SizedBox(width: 5.0),
                          Text('Acct Link', style: kMyRewardsTextStyle2),
                        ],
                      ),
                      SizedBox(height: 25.0),
                      KBigButton(text: "Confirm", onPressed: () {}),
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
