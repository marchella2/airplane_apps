import 'package:airplane_apps/cubit/page_cubit.dart';
import 'package:airplane_apps/ui/pages/home_page.dart';
import 'package:airplane_apps/ui/pages/setting_page.dart';
import 'package:airplane_apps/ui/pages/transaction_page.dart';
import 'package:airplane_apps/ui/pages/wallet_page.dart';
import 'package:airplane_apps/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:airplane_apps/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1: 
          return TransactionPage();
        case 2: 
          return WalletPage();
        case 3: 
          return SettingPage();
        default:
          return HomePage();
      }
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
            CustomBottomNavigationItem(
              index: 0,
              imageUrl: 'assets/images/icon_home.png',
            ),
            CustomBottomNavigationItem(
              index: 1,
              imageUrl: 'assets/images/icon_booking.png',
            ),
            CustomBottomNavigationItem(
              index: 2,
              imageUrl: 'assets/images/icon_card.png',
            ),
            CustomBottomNavigationItem(
              index: 3,
              imageUrl: 'assets/images/icon_settings.png',
            ),
          ]),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              customButtonNavigation(),
            ],
          ),
        );
      },
    );
  }
}
