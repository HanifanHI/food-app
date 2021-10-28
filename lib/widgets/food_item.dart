import 'package:flutter/material.dart';
import 'package:food_app/pages/detail_page.dart';
import '/shared/theme.dart';

class FoodItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String description;
  final double price;

  FoodItem({
    required this.imageUrl,
    required this.name,
    required this.description,
    this.price = 0.0,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetailPage();
            },
          ),
        );
      },
      child: Container(
        width: double.infinity,
        height: 120,
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 25,
        ),
        decoration: BoxDecoration(
          color: kGreyLightColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                image: DecorationImage(
                  image: AssetImage(
                    imageUrl,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 18,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    description,
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    'IDR $price',
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: semiBold,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kGreenColor,
              ),
              child: Icon(
                Icons.add,
                color: kWhiteColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
