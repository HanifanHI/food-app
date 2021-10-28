import 'package:flutter/material.dart';
import 'package:food_app/shared/theme.dart';

class SizeItem extends StatelessWidget {
  final String size;
  final bool isSelected;

  SizeItem({
    this.isSelected = false,
    required this.size,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: isSelected ? kGreenColor : kGreyLightColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          size,
          style: isSelected
              ? whiteTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: medium,
                )
              : blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: medium,
                ),
        ),
      ),
    );
  }
}
