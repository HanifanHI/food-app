import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/cubit/page_cubit.dart';
import 'package:food_app/pages/home_page.dart';
import 'package:food_app/pages/like_page.dart';
import 'package:food_app/pages/notif_page.dart';
import 'package:food_app/pages/user_page.dart';
import 'package:food_app/shared/theme.dart';
import 'package:food_app/widgets/bottom_nanvigation_item.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // * MENU ITEM
    Widget menuItem(int currentIndex) {
      // # PENGKONDISIAN
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return NotifPage();
        case 2:
          return LikePage();
        case 3:
          return UserPage();
        default:
          return HomePage();
      }
    }

    // * CUSTOM NAVIGATION
    Widget customNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.fromLTRB(30, 0, 30, 30),
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(
            color: kGreyLightColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavigationItem(
                index: 0,
                imageUrl: 'assets/icon-home.png',
                name: 'Home',
              ),
              BottomNavigationItem(
                index: 1,
                imageUrl: 'assets/icon-notif.png',
                name: 'Notif',
              ),
              BottomNavigationItem(
                index: 2,
                imageUrl: 'assets/icon-like.png',
                name: 'Like',
              ),
              BottomNavigationItem(
                index: 3,
                imageUrl: 'assets/icon-user.png',
                name: 'User',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, index) {
        return Scaffold(
          body: Stack(
            children: [
              menuItem(index),
              customNavigation(),
            ],
          ),
        );
      },
    );
  }
}
