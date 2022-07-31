import 'package:flutter/material.dart';
import 'package:growwui/Utils/Static/custom_color.dart';
import 'package:growwui/View/Screens/Calculate/calculate_screen.dart';
import 'package:growwui/View/Screens/Crypto/crypto_screen.dart';
import 'package:growwui/View/Screens/Home/home_page.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

PersistentTabController? controller;

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  CustomBottomNavigationBarState createState() =>
      CustomBottomNavigationBarState();
}

class CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentIndex = 0;

  // bool? _hideNavBar;

  @override
  void initState() {
    super.initState();
    controller = PersistentTabController(initialIndex: 0);

    // _hideNavBar = false;
  }

  List<Widget> _buildScreens() {
    return [
      const HomeScreen(),
      const CryptoScreen(),
      const CalculateScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItem() {
    return [
      PersistentBottomNavBarItem(
        title: 'Stock',
        icon: const Icon(
          Icons.currency_rupee,
        ),
        activeColorPrimary: CustomColor.selectedBottomNavigationBarItem,
      ),
      PersistentBottomNavBarItem(
        title: 'Crypto Currency',
        icon: const Icon(
          Icons.currency_bitcoin_rounded,
        ),
        activeColorPrimary: CustomColor.selectedBottomNavigationBarItem,
      ),
      PersistentBottomNavBarItem(
        title: 'Calculate',
        icon: const Icon(
          Icons.calculate,
        ),
        activeColorPrimary: CustomColor.selectedBottomNavigationBarItem,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PersistentTabView(
          context,
          hideNavigationBar: false,
          resizeToAvoidBottomInset: false,
          onItemSelected: (index) => setState(() => currentIndex = index),
          screens: _buildScreens(),
          items: _navBarsItem(),
          controller: controller,
          confineInSafeArea: true,
          backgroundColor: CustomColor.bottomNavigationBarbgColor,
          hideNavigationBarWhenKeyboardShows: false,
          navBarStyle: NavBarStyle.style6,
        ),
      ),
    );
  }
}






























































// int currentIndex = 0;
  // final screens = [
  //   const HomeScreen(),
  //   const CryptoScreen(),
  //   const CalculateScreen(),
  // ];




  // bottomNavigationBar: BottomNavigationBar(
        //   currentIndex: currentIndex,
        //   onTap: (index) => setState(() => currentIndex = index),
        //   type: BottomNavigationBarType.fixed,
        //   backgroundColor: CustomColor.bottomNavigationBarbgColor,
        //   selectedItemColor: CustomColor.selectedBottomNavigationBarItem,
        //   unselectedItemColor: CustomColor.unselectedBottomNavigationBarItem,
        //   items:const [
        //     BottomNavigationBarItem(
        //       label: 'Stock',
        //       icon: Icon(
        //         Icons.currency_rupee,
        //       ),
        //     ),
        //     BottomNavigationBarItem(
        //       label: 'Crypto Currency',
        //       icon: Icon(
        //         Icons.currency_bitcoin_rounded,
        //       ),
        //     ),
        //     BottomNavigationBarItem(
        //       label: 'Calculate',
        //       icon: Icon(
        //         Icons.calculate,
        //       ),
        //     ),
        //   ],
        // ),