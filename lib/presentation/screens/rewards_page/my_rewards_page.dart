import 'package:coherence_app/presentation/common_widgets/kBigButton.dart';
import 'package:coherence_app/presentation/screens/homepage/home_page.dart';
import 'package:coherence_app/presentation/screens/rewards_page/my_rewards_page_controller.dart';
import 'package:coherence_app/utilities/colors.dart';
import 'package:coherence_app/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyRewardsPage extends StatelessWidget {
  final MyRewardsPageController _myRewardsPageController =
      Get.put(MyRewardsPageController());

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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.0),
            IconButton(
                icon: Icon(FontAwesomeIcons.arrowLeft,
                    size: 20.0, color: kSecondaryColor),
                onPressed: () => Get.back()),
            SizedBox(height: 5.0),
            Center(
              child: Text('My Rewards',
                  style: GoogleFonts.merriweatherSans(
                      textStyle: TextStyle(
                          fontSize: 30.0,
                          color: kSecondaryColor,
                          letterSpacing: 0.8,
                          fontWeight: FontWeight.w700))),
            ),
            SizedBox(height: 40.0),
            Center(
              child: KBigButton(
                  text: "Available Coupons",
                  onPressed: _myRewardsPageController.showBottomSheet),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Employer Contributions:', style: kMyRewardsTextStyle1),
                  SizedBox(height: 6.0),
                  Text('\$1,659.00', style: kMyRewardsTextStyle2),
                  SizedBox(height: 25.0),
                  Text('Stock Awards:', style: kMyRewardsTextStyle1),
                  SizedBox(height: 6.0),
                  _buildStockPanel(),
                  SizedBox(height: 25.0),
                  Text('Total Rewards Claimed:', style: kMyRewardsTextStyle1),
                  SizedBox(height: 6.0),
                  Center(child: Text('7 / 10', style: kMyRewardsTextStyle2)),
                ],
              ),
            )
          ],
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

  Widget _buildStockPanel() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('STCK1', style: kMyRewardsTextStyle2),
            SizedBox(width: 20.0),
            Text('2', style: kMyRewardsTextStyle2),
            SizedBox(width: 20.0),
            Text('3 / 1 / 21', style: kMyRewardsTextStyle2),
          ],
        ),
        SizedBox(height: 6.0),
        Row(
          children: [
            Text('STCK1', style: kMyRewardsTextStyle2),
            SizedBox(width: 20.0),
            Text('2', style: kMyRewardsTextStyle2),
            SizedBox(width: 20.0),
            Text('3 / 1 / 21', style: kMyRewardsTextStyle2),
          ],
        )
      ],
    );
  }
}
