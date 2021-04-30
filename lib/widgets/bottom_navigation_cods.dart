import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uts1/constants/color_constant.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigationCods extends StatefulWidget {
  @override
  _BottomNavigationCodsState createState() => _BottomNavigationCodsState();
}

class _BottomNavigationCodsState extends State<BottomNavigationCods> {
  int _selectedIndex = 0;

  var bottomTextStyle =
      GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w500);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var bottomNavigationBarItem = BottomNavigationBarItem(
      icon: _selectedIndex == 1
          ? new SvgPicture.asset(
              'assets/icons/profile2.svg',
              height: 25,
            )
          : new SvgPicture.asset(
              'assets/icons/profile1.svg',
              height: 25,
            ),
      // ignore: deprecated_member_use

      // ignore: deprecated_member_use
      title: Text(
        'Profile',
        style: bottomTextStyle,
      ),
    );
    return Container(
        height: 64,
        decoration: BoxDecoration(
          color: darkColor,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 15,
                offset: Offset(0, 5))
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? new SvgPicture.asset(
                      'assets/icons/home2.svg',
                      height: 25,
                    )
                  : new SvgPicture.asset(
                      'assets/icons/home1.svg',
                      height: 25,
                    ),
              // ignore: deprecated_member_use
              title: Text(
                'Home',
                style: bottomTextStyle,
              ),
            ),
            bottomNavigationBarItem,
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: darkColor,
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
          backgroundColor: Colors.transparent,
          selectedFontSize: 12,
          showUnselectedLabels: true,
          elevation: 0,
        ));
  }
}
