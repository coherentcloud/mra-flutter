import 'package:coherence_app/presentation/screens/activate_page/activate_page.dart';
import 'package:coherence_app/presentation/screens/earn_rewards_page/earn_rewards_page.dart';
import 'package:coherence_app/presentation/screens/rewards_page/my_rewards_page.dart';
import 'package:coherence_app/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'colors.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.8,
      child: Drawer(
        child: ListView(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          children: [
            Container(
              height: 150.0,
              padding: EdgeInsets.only(top: 10.0, left: 10.0),
              decoration: BoxDecoration(
                color: kSecondaryColor,
                image: DecorationImage(
                  image: AssetImage("images/white.png"),
                  scale: 1.0,
                ),
              ),
            ),
            Container(
              color: kPrimaryColor.withOpacity(0.4),
              height: Get.height,
              child: Column(
                children: [
                  TextButton(
                      onPressed: () {
                        Get.back();
                        Get.to(() => ActivatePage());
                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Activate", style: kDrawerItemTextStyle),
                      )),
                  Divider(thickness: 2),
                  TextButton(
                      onPressed: () {
                        Get.back();
                        Get.to(() => EarnRewardsPage());
                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child:
                            Text("Earn Rewards", style: kDrawerItemTextStyle),
                      )),
                  Divider(thickness: 2),
                  TextButton(
                      onPressed: () {
                        Get.back();
                        Get.to(() => MyRewardsPage());
                      },
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child:
                              Text("My Rewards", style: kDrawerItemTextStyle))),
                  Divider(thickness: 2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
