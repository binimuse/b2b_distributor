import 'package:b2b_distributor/app/modules/home/views/home_header.dart';
import 'package:b2b_distributor/components/coustom_bottom_nav_bar.dart';
import 'package:b2b_distributor/constant/enums.dart';
import 'package:b2b_distributor/constant/size_config.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'order_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(20)),
              HomeHeader(),
              SizedBox(height: getProportionateScreenWidth(10)),
              OrderView(),
              SizedBox(height: getProportionateScreenWidth(30)),
              //     PopularProducts(),
              SizedBox(height: getProportionateScreenWidth(30)),
            ],
          ),
        ),
      ),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
