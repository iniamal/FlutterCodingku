import 'package:flutter/material.dart';
import 'package:uts1/constants/color_constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uts1/constants/style_constant.dart';
import 'package:uts1/widgets/bottom_navigation_cods.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:uts1/model/carousels_model.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
    );
  }
}
