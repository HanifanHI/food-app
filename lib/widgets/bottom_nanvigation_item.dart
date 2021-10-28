import 'package:flutter/material.dart';
import 'package:food_app/cubit/page_cubit.dart';
import 'package:food_app/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavigationItem extends StatelessWidget {
  final int index;
  final String imageUrl;
  final String name;

  BottomNavigationItem({
    required this.index,
    required this.imageUrl,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    var pageCubit = context.read<PageCubit>();
    return GestureDetector(
      onTap: () {
        pageCubit.setPage(index);
      },
      child: pageCubit.state == index
          ? Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                color: kGreenColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    imageUrl,
                    width: 24,
                    height: 24,
                    color: kWhiteColor,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    name,
                    style: whiteTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: bold,
                    ),
                  )
                ],
              ),
            )
          : Image.asset(
              imageUrl,
              width: 24,
              height: 24,
              color: kGreyDarkColor,
              fit: BoxFit.cover,
            ),
    );
  }
}
