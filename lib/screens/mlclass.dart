import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:uts1/constants/color_constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uts1/constants/style_constant.dart';
import 'package:uts1/widgets/bottom_navigation_cods.dart';

class MachineLearning extends StatefulWidget {
  @override
  _MachineLearningState createState() => _MachineLearningState();
}

class _MachineLearningState extends State<MachineLearning> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: mBackgroundColor,
      bottomNavigationBar: BottomNavigationCods(),
      body: Stack(
        children: <Widget>[
          Container(
            height: 300,
            decoration: BoxDecoration(
              color: mFillColor,
              image: DecorationImage(
                  image: AssetImage("assets/images/newml.png"),
                  fit: BoxFit.fill),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text("Machine Learning", style: bigTitle),
                    SizedBox(height: 10),
                    Text(
                      "1 Month Course",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: size.width * .5, // it just take 60% of total width
                      child: Text(
                        "Pahami semua tentang fundamental machine learning disini",
                      ),
                    ),
                    SizedBox(height: 20),
                    Text("Bagian 1", style: notBigTitle),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 25),
                      padding: EdgeInsets.all(10),
                      height: 85,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: mBorderColor,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(top: 4, bottom: 10)),
                          SvgPicture.asset(
                            'assets/svg/ceklis.svg',
                            height: 40,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '#1 Real Life Machine Learning',
                                  style: mClassStyle,
                                  textAlign: TextAlign.left,
                                ),
                                Text('Machine Learning ada disekitar kita!',
                                    style: mSubtitle)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 85,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: mBorderColor,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          Padding(
                              padding:
                                  EdgeInsets.only(left: 8, top: 4, bottom: 10)),
                          SvgPicture.asset(
                            'assets/svg/ceklis.svg',
                            height: 40,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '#2 Apa itu Machine Learning?',
                                  style: mClassStyle,
                                  textAlign: TextAlign.left,
                                ),
                                Text('Machine Learning adalah cabang ilmu AI',
                                    style: mSubtitle)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 25),
                      padding: EdgeInsets.all(10),
                      height: 85,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: mBorderColor,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(top: 4, bottom: 10)),
                          SvgPicture.asset(
                            'assets/svg/play.svg',
                            height: 50,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '#3 Mulai Dengan Analisis Data',
                                  style: mClassStyle,
                                  textAlign: TextAlign.left,
                                ),
                                Text('Machine Learning ada disekitar kita!',
                                    style: mSubtitle)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: EdgeInsets.all(10),
                      height: 85,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: mBorderColor,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(top: 4, bottom: 10)),
                          SvgPicture.asset(
                            'assets/svg/play.svg',
                            height: 50,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '#4 Ambil Hasil Analisis Data',
                                  style: mClassStyle,
                                  textAlign: TextAlign.left,
                                ),
                                Text('Machine Learning ada disekitar kita!',
                                    style: mSubtitle)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 25),
                      padding: EdgeInsets.all(10),
                      height: 85,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: mBorderColor,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(top: 4, bottom: 10)),
                          SvgPicture.asset(
                            'assets/svg/gembok.svg',
                            height: 50,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '#5 Kuis Awal Machine Learning',
                                  style: mClassStyle,
                                  textAlign: TextAlign.left,
                                ),
                                Text('Machine Learning ada disekitar kita!',
                                    style: mSubtitle)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
