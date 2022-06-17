import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/delivery_home_controller.dart';

class DeliveryHomeView extends GetView<DeliveryHomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeliveryHomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DeliveryHomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
