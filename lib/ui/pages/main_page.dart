import 'package:airplane_apps/ui/pages/home_page.dart';
import 'package:airplane_apps/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:airplane_apps/shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(){
      return HomePage();
    }

    Widget customButtonNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(
              bottom: 30, left: defaultMargin, right: defaultMargin),
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            CustomBottomNavigationItem(imageUrl: 'assets/images/icon_home.png', isSelected: true,),
            CustomBottomNavigationItem(imageUrl: 'assets/images/icon_booking.png',),
            CustomBottomNavigationItem(imageUrl: 'assets/images/icon_card.png',),
            CustomBottomNavigationItem(imageUrl: 'assets/images/icon_settings.png',),
          ]),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          buildContent(),
          customButtonNavigation(),
        ],
      ),
    );
  }
}
