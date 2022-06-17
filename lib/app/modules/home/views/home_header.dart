import 'package:b2b_distributor/app/modules/home/views/search_field.dart';
import 'package:b2b_distributor/app/routes/app_pages.dart';
import 'package:b2b_distributor/constant/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfitem: 3,
            press: () {
              Get.toNamed(Routes.NOTIFICATION);

              //  Navigator.pushNamed(context, NotificationPage.routeName);
            },
          ),
        ],
      ),
    );
  }
}
