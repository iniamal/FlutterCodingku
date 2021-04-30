import 'package:flutter/material.dart';
import 'package:uts1/constants/color_constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uts1/constants/style_constant.dart';
import 'package:uts1/screens/mlclass.dart';
import 'package:uts1/widgets/bottom_navigation_cods.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:uts1/model/carousels_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mBackgroundColor,
        title: SvgPicture.asset(
          'assets/svg/barlogo.svg',
          height: 35,
        ),
        elevation: 0,
      ),
      backgroundColor: mBackgroundColor,
      bottomNavigationBar: BottomNavigationCods(),
      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20, right: 16),
              child: Text(
                'Welcome Bro!',
                style: mTitleStyle,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 16, right: 16),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 190,
                    child: Swiper(
                      onIndexChanged: (index) {
                        setState(() {
                          _current = index;
                        });
                      },
                      autoplay: true,
                      layout: SwiperLayout.DEFAULT,
                      itemCount: carousels.length,
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                    carousels[index].image,
                                  ),
                                  fit: BoxFit.cover)),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: map<Widget>(carousels, (index, image) {
                          return Container(
                            alignment: Alignment.centerLeft,
                            height: 6,
                            width: 6,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _current == index
                                    ? Colors.blueGrey
                                    : Colors.grey),
                          );
                        }),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text('more ...'),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 24, bottom: 20),
              child:
                  Text('Pilih Kelas Untuk Kamu Sekarang!', style: mTitleStyle),
            ),
            Container(
              height: 200,
              margin: EdgeInsets.only(left: 16, right: 10),
              child: Column(
                children: <Widget>[
                  Row(children: <Widget>[
                    Expanded(
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MachineLearning(),
                                ));
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 15),
                            padding: EdgeInsets.only(left: 2),
                            height: 190,
                            decoration: BoxDecoration(
                              color: mFillColor,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: mBorderColor, width: 1),
                            ),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 4, bottom: 10)),
                                SvgPicture.asset(
                                  //Kelas Machine Learning
                                  'assets/svg/mlrn.svg',
                                  height: 50,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'Machine Learning Pemula',
                                        textAlign: TextAlign.center,
                                        style: mClassStyle,
                                      ),
                                      Padding(padding: EdgeInsets.all(5)),
                                      Text(
                                          'Kuasai semua fundamental machine learning gratis hanya untuk kamu!',
                                          style: mSubtitle),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 8),
                        padding: EdgeInsets.only(left: 2),
                        height: 190,
                        decoration: BoxDecoration(
                          color: mFillColor,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: mBorderColor, width: 1),
                        ),
                        child: Column(
                          children: <Widget>[
                            // KELAS DEEP LEARNING
                            Padding(
                                padding: EdgeInsets.only(top: 4, bottom: 10)),
                            SvgPicture.asset(
                              'assets/svg/dlrn.svg',
                              height: 50,
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Deep Learning Pemula',
                                    textAlign: TextAlign.center,
                                    style: mClassStyle,
                                  ),
                                  Padding(padding: EdgeInsets.all(5)),
                                  Text(
                                      'Taukah kamu kalau deep learning bagian kecil dari machine learning loh, cek disini untuk lebih lengkapnya',
                                      style: mSubtitle),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[],
                  )
                ],
              ),
            ),
            Container(
              height: 200,
              margin: EdgeInsets.only(left: 16, right: 10),
              child: Column(
                children: <Widget>[
                  Row(children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 15),
                        padding: EdgeInsets.only(left: 2),
                        height: 190,
                        decoration: BoxDecoration(
                          color: mFillColor,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: mBorderColor, width: 1),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                                //Kelas Konsultasi
                                padding: EdgeInsets.only(top: 4, bottom: 10)),
                            SvgPicture.asset(
                              'assets/svg/privatekonsul.svg',
                              height: 50,
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Konsultasi Privat',
                                    textAlign: TextAlign.center,
                                    style: mClassStyle,
                                  ),
                                  Padding(padding: EdgeInsets.all(5)),
                                  Text(
                                    'Malu bertanya sesat dijalan! yuk konsultasikan semua disini private 1on1 call loh',
                                    style: mSubtitle,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 8),
                        padding: EdgeInsets.only(left: 2),
                        height: 190,
                        decoration: BoxDecoration(
                          color: mFillColor,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: mBorderColor, width: 1),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(top: 4, bottom: 10)),
                            SvgPicture.asset(
                              'assets/svg/dlrn.svg',
                              height: 50,
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Konsultasi Tim',
                                    textAlign: TextAlign.center,
                                    style: mClassStyle,
                                  ),
                                  Padding(padding: EdgeInsets.all(5)),
                                  Text(
                                      'Konsultasikan studi kasus atau proyekmu secara tim, dengan kapasitas sepuluh orang',
                                      style: mSubtitle),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
