import 'package:flutter/material.dart';
import 'package:food_app/shared/theme.dart';
import 'package:food_app/widgets/size_item.dart';

class DetailPage extends StatelessWidget {
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
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon-left.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon-titik-tiga.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      );
    }

    // * CONTENT
    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Steak House',
              style: blackTextStyle.copyWith(
                fontSize: 30,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Our very own! Smashed\nbeef burgers',
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            Container(
              width: double.infinity,
              height: 216,
              margin: EdgeInsets.symmetric(vertical: 50),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image-4.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      );
    }

    // * SIZE
    Widget size() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Size : ',
              style: blackTextStyle.copyWith(
                fontSize: 14,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              height: 60,
              child: Row(
                children: [
                  SizeItem(
                    size: 'S',
                  ),
                  SizeItem(
                    isSelected: true,
                    size: 'M',
                  ),
                  SizeItem(
                    size: 'L',
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    // * QUANTITY
    Widget quantity() {
      return Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Quantity',
              style: blackTextStyle.copyWith(
                fontSize: 14,
                fontWeight: medium,
              ),
            ),
            Container(
              width: 115,
              height: 35,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: kGreyLightColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.remove,
                        color: kBlackColor,
                      ),
                    ),
                  ),
                  Text(
                    '2',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: kGreenColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    // * PRICE & CART
    Widget cart() {
      return Container(
        margin: EdgeInsets.only(top: 40),
        width: double.infinity,
        height: 60,
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Price',
                    style: greyTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    'IDR 49.999',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: kGreyLightColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Icon(
                    Icons.favorite_border,
                    size: 24,
                    color: kBlackColor,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/cart.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            )
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
              content(),
              size(),
              quantity(),
              cart(),
            ],
          ),
        ),
      ),
    );
  }
}
