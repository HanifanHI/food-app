import 'package:flutter/material.dart';
import 'package:food_app/shared/theme.dart';
import 'package:food_app/widgets/food_item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // * HEADER
    Widget header() {
      return Container(
        width: double.infinity,
        height: 24,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon-menu.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon-cart.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      );
    }

    // * SEARCH
    Widget search() {
      return Container(
        width: double.infinity,
        height: 50,
        margin: EdgeInsets.only(top: 21),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: kGreyLightColor,
        ),
        child: Center(
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search),
              hintText: 'Search your favorite food',
              hintStyle: greyTextStyle.copyWith(
                fontSize: 12,
                fontWeight: medium,
              ),
            ),
          ),
        ),
      );
    }

    // * TABBAR
    Widget tabbar() {
      return Container(
        width: double.infinity,
        height: 24,
        margin: EdgeInsets.only(top: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Fast Food',
                  style: greenTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
                Container(
                  width: 20,
                  height: 2,
                  decoration: BoxDecoration(
                    color: kGreenColor,
                    borderRadius: BorderRadius.circular(2),
                  ),
                )
              ],
            ),
            Text(
              'Desert',
              style: greyTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
            Text(
              'Drinks',
              style: greyTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
            Text(
              'Snacks',
              style: greyTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
      );
    }

    // * POPULAR FOOD
    Widget food() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Popular Food',
              style: blackTextStyle.copyWith(
                fontSize: 30,
                fontWeight: semiBold,
              ),
            ),
            FoodItem(
              imageUrl: 'assets/image-1.png',
              name: 'Pizza',
              description: 'Delicious food 2020',
              price: 49.999,
            ),
            FoodItem(
              imageUrl: 'assets/image-2.png',
              name: 'Hamburger',
              description: 'Delicious food 2020',
              price: 59.999,
            ),
            FoodItem(
              imageUrl: 'assets/image-3.png',
              name: 'Double Hot Dog',
              description: 'Delicious food 2020',
              price: 34.999,
            ),
            FoodItem(
              imageUrl: 'assets/image-3.png',
              name: 'Double Hot Dog',
              description: 'Delicious food 2020',
              price: 34.999,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: ListView(
            children: [
              header(),
              search(),
              tabbar(),
              food(),
            ],
          ),
        ),
      ),
    );
  }
}
