import 'package:coherence_app/presentation/data/transactions_data_model.dart';
import 'package:coherence_app/utilities/colors.dart';
import 'package:coherence_app/utilities/constants.dart';
import 'package:coherence_app/utilities/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
          drawer: MyDrawer(),
          backgroundColor: Colors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40.0),
              IconButton(
                  icon: Icon(
                    Icons.menu,
                    size: 30.0,
                    color: kSecondaryColor,
                  ),
                  onPressed: () => _scaffoldKey.currentState.openDrawer()),
              SizedBox(height: 10.0),
              _buildHealthSavingsImagePanel(),
              SizedBox(height: 25.0),
              Center(
                child: Text('Welcome Doug!',
                    style: GoogleFonts.sourceSansPro(
                        textStyle: TextStyle(
                            fontSize: 32.0,
                            color: kTextColor2,
                            fontWeight: FontWeight.w600))),
              ),
              SizedBox(height: 50.0),
              Center(
                child: Text('Recent Transactions',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 18.0,
                            color: kTextColor2,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.2))),
              ),
              //_buildTable(),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: HorizontalDataTable(
                    leftHandSideColBackgroundColor: Colors.transparent,
                    rightHandSideColBackgroundColor: Colors.transparent,
                    leftHandSideColumnWidth: 60,
                    rightHandSideColumnWidth: Get.width - 30,
                    isFixedHeader: true,
                    tableHeight: 300.0,
                    headerWidgets: [
                      _getTitleItemWidget('Date', 70),
                      _getTitleItemWidget('Activity', 80),
                      _getTitleItemWidget('Amount', 80),
                      _getTitleItemWidget('Status', 80),
                      _getTitleItemWidget('Type', 80),
                    ],
                    leftSideItemBuilder: (context, index) {
                      var data = transactionsList[index];
                      return Container(
                        child: Text(data.date,
                            style: kTableItemTextStyle.copyWith(
                                letterSpacing: 1.4)),
                        height: 52,
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        alignment: Alignment.centerLeft,
                      );
                    },
                    rightSideItemBuilder: _generateRightHandSideColumnRow,
                    rowSeparatorWidget: const Divider(
                      color: Colors.black54,
                      height: 1.0,
                      thickness: 0.0,
                    ),
                    itemCount: transactionsList.length,
                  ),
                ),
              ),
            ],
          )),
    );
  }

  Widget _getTitleItemWidget(String label, double width) {
    return Container(
      child: Text(label,
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: kTextColor2.withOpacity(0.8)))),
      width: width,
      height: 56,
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
    );
  }

  Widget _generateRightHandSideColumnRow(BuildContext context, int index) {
    var data = transactionsList[index];
    return Row(
      children: <Widget>[
        Container(
          child: Text(data.activity, style: kTableItemTextStyle),
          width: 80,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          child: Align(
              alignment: Alignment.centerRight,
              child: Text(data.amount, style: kTableItemTextStyle)),
          width: 80,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          child: Text(data.status, style: kTableItemTextStyle),
          width: 80,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          child: Text(data.type, style: kTableItemTextStyle),
          width: 80,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
      ],
    );
  }
}

Row _buildHealthSavingsImagePanel() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image(
        image: AssetImage("images/black.png"),
        height: 60.0,
      ),
      SizedBox(width: 10.0),
      Text('Health Savings Rewards',
          style: GoogleFonts.merriweatherSans(
              textStyle: TextStyle(
                  fontSize: 20.0,
                  color: kSecondaryColor,
                  fontWeight: FontWeight.w700))),
    ],
  );
}
