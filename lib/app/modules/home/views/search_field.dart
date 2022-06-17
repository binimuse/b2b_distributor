import 'package:b2b_distributor/app/modules/searchpage/views/searchpage_view.dart';
import 'package:b2b_distributor/app/routes/app_pages.dart';
import 'package:b2b_distributor/constant/constants.dart';
import 'package:b2b_distributor/constant/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchField extends StatefulWidget {
  @override
  _SearchFieldPageState createState() => _SearchFieldPageState();
}

class _SearchFieldPageState extends State<SearchField> {
  // initialize reusable widget
  @override
  void initState() {
    super.initState();
  }

  unfocus() async {
    await Future.delayed(const Duration(seconds: 2), () {
      FocusScopeNode currentScope = FocusScope.of(context);
      if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
        FocusManager.instance.primaryFocus?.unfocus();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.7,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        onChanged: (value) => print(value),
        onTap: () {
          Get.toNamed(Routes.SEARCHPAGE);
        },
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenWidth(9)),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "Search Orders",
            prefixIcon: const Icon(Icons.search)),
      ),
    );
  }
}
