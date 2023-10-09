import 'package:airbnb/home/home_screen.dart';
import 'package:airbnb/profile/create_profile.dart';
import 'package:airbnb/profile/user_profile/user_profile.dart';
import 'package:airbnb/inbox/inbox_page.dart';
import 'package:airbnb/profile/your_profile.dart';
import 'package:airbnb/trips/trips_page.dart';
import 'package:airbnb/utils/Images.dart';
import 'package:airbnb/utils/app_colors.dart';
import 'package:airbnb/utils/app_strings.dart';
import 'package:airbnb/utils/app_styles.dart';
import 'package:airbnb/wishlist/wishlist_page.dart';
import 'package:airbnb/wishlist/wishlist_properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'login/cnfrm_number.dart';
import 'login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: MyBottomNavigationBar(),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    WishlistProperties(),
    TripsPage(),
    InboxPage(),
    UserProfilePage(),
  ];

  Color _svgColor = AppColors.grey_blue; // Initial color for the SVG

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;

      // Update the SVG color when the item is selected
      _svgColor = index == 2 ? AppColors.pink : AppColors.grey_blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _screens.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: Strings.search,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline_rounded),
            label: Strings.wishlist,
          ),
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                _svgColor,
                BlendMode.srcIn,
              ),
              child: SvgPicture.asset(
                Images.bag,
                width: 26,
                height: 26,
              ),
            ),
            label: Strings.trip,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.messenger_outline),
            label: Strings.inbox,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: Strings.login,
          ),
        ],
        selectedItemColor: AppColors.pink, // Color when selected
        unselectedItemColor: AppColors.grey_blue, // Color when not selected
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: AppStyles.twelveGreyBlue, // Apply the text style to selected labels
        unselectedLabelStyle: AppStyles.twelveGreyBlue,
      ),
    );
  }
}
