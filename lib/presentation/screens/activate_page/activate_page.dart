import 'package:coherence_app/presentation/screens/homepage/home_page.dart';
import 'package:coherence_app/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pin_put/pin_put.dart';

class ActivatePage extends StatefulWidget {
  @override
  _ActivatePageState createState() => _ActivatePageState();
}

class _ActivatePageState extends State<ActivatePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: kTextColor2),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

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
        key: _scaffoldKey,
        backgroundColor: Colors.transparent,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40.0),
              IconButton(
                  icon: Icon(FontAwesomeIcons.arrowLeft,
                      size: 20.0, color: kSecondaryColor),
                  onPressed: () => Get.back()),
              SizedBox(height: 20.0),
              Center(
                child: Text('Activate',
                    style: GoogleFonts.merriweatherSans(
                        textStyle: TextStyle(
                            fontSize: 25.0,
                            color: kSecondaryColor,
                            fontWeight: FontWeight.w700))),
              ),
              SizedBox(height: 35.0),
              _buildEmailTF(),
              SizedBox(height: 50.0),
              Center(
                child: Text('Verify pin sent to your email',
                    style: GoogleFonts.merriweatherSans(
                        textStyle: TextStyle(
                            fontSize: 16.0,
                            color: kSecondaryColor,
                            fontWeight: FontWeight.w600))),
              ),
              _buildPinVerificationPanel(),
              SizedBox(height: 40.0),
              Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(
                      height: 40, width: Get.width - 150),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: kPrimaryColor.withOpacity(0.8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0))),
                    child: Text(
                      "Confirm",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontSize: 16.0,
                        color: kTextColor2.withOpacity(0.8),
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      )),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
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

  Container _buildPinVerificationPanel() {
    return Container(
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.all(10.0),
      child: PinPut(
        fieldsCount: 5,
        onSubmit: (String pin) => Get.snackbar("ID", pin),
        submittedFieldDecoration: _pinPutDecoration.copyWith(
          borderRadius: BorderRadius.circular(20.0),
        ),
        selectedFieldDecoration: _pinPutDecoration,
        followingFieldDecoration: _pinPutDecoration.copyWith(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(
            color: kTextColor2.withOpacity(0.5),
          ),
        ),
      ),
    );
  }

  TextField _buildEmailTF() {
    return TextField(
      cursorColor: kSecondaryColor,
      decoration: InputDecoration(
        hintText: "Email",
        hintStyle: GoogleFonts.poppins(
            textStyle: TextStyle(
          fontSize: 13.0,
          letterSpacing: 1.3,
          fontWeight: FontWeight.w600,
        )),
        isDense: true,
        fillColor: kPrimaryColor.withOpacity(0.8),
        filled: true,
        contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 15.0),
        enabled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent, width: 0.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
