
import 'package:bemzaj_store/consts/BemzajColors.dart';
import 'package:bemzaj_store/screens/AuthScreens/OtpScreen.dart';
import 'package:bemzaj_store/screens/AuthScreens/addAdressScreen.dart';
import 'package:bemzaj_store/screens/AuthScreens/registrationScreen.dart';
import 'package:bemzaj_store/screens/AuthScreens/loginScreen.dart';
import 'package:bemzaj_store/screens/HomePage.dart';
import 'package:bemzaj_store/screens/OrdersScreens/ItemScreen.dart';
import 'package:bemzaj_store/screens/OrdersScreens/OrderScreen.dart';
import 'package:bemzaj_store/screens/OrdersScreens/OrdersScreen.dart';
import 'package:bemzaj_store/screens/PaymentScreens/orderPlacedScreen.dart';
import 'package:bemzaj_store/screens/addItemsScreen.dart';
import 'package:bemzaj_store/screens/PaymentScreens/paymentScreen.dart';
import 'package:bemzaj_store/screens/moreScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:sizer/sizer.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {

    return PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        navBarHeight: 40.sp,margin: EdgeInsets.only(bottom: 10.sp,left:4.5.w,right: 4.5.w ),
        
        
        backgroundColor: Colors.black, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(30.0),
          colorBehindNavBar: BemzajColors.mainBackgroundC
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style12, // Choose the nav bar style with this property.
    );
  }

  PersistentTabController _controller = PersistentTabController(initialIndex: 0);


    List<PersistentBottomNavBarItem> _navBarsItems() {
        return [
            PersistentBottomNavBarItem(
                icon: Icon(CupertinoIcons.home),
                title: ("Home"),
                activeColorPrimary: Color(0xffffffff),
                inactiveColorPrimary: Color(0xff4A4A4A),
            ),
            PersistentBottomNavBarItem(
                icon: Icon(CupertinoIcons.add_circled),
                title: ("Order"),
                activeColorPrimary: Color(0xffffffff),
                inactiveColorPrimary: Color(0xff4A4A4A),
            ),
              PersistentBottomNavBarItem(
                icon: Icon(CupertinoIcons.cart),
                title: ("Cart"),
                activeColorPrimary: Color(0xffffffff),
                inactiveColorPrimary: Color(0xff4A4A4A),
            ),  PersistentBottomNavBarItem(
                icon: Icon(CupertinoIcons.dot_square),
                title: ("More"),
                activeColorPrimary: Color(0xffffffff),
                inactiveColorPrimary: Color(0xff4A4A4A),
            ),
        ];
    }

    List<Widget> _buildScreens() {
        return [
           HomePage(),
          RegistrationScreen(),
                    PaymentScreen(),
                    OrdersScreen()


        ];
    }
}
