import 'package:b2b_distributor/constant/constants.dart';
import 'package:b2b_distributor/constant/global_style.dart';
import 'package:b2b_distributor/constant/reusable_widget.dart';
import 'package:flutter/material.dart';

import 'confirmationcode.dart';

class OrderStatusPage extends StatefulWidget {
  @override
  _OrderStatusPageState createState() => _OrderStatusPageState();
}

class _OrderStatusPageState extends State<OrderStatusPage> {
  // initialize reusable widget
  final _reusableWidget = ReusableWidget();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: GlobalStyle.appBarIconThemeColor,
          ),
          elevation: GlobalStyle.appBarElevation,
          title: Text(
            'Order Status',
            style: GlobalStyle.appBarTitle,
          ),
          backgroundColor: GlobalStyle.appBarBackgroundColor,
          systemOverlayStyle: GlobalStyle.appBarSystemOverlayStyle,
          bottom: _reusableWidget.bottomAppBar(),
        ),
        body: Container(
          child: ListView(
            padding: EdgeInsets.all(32),
            children: [
              _createPathTop('11 Sep 2019 08:40', 'Order Confirmed',
                  'Your order is Confirmed'),
              _createPath('11 Sep 2019 08:39', 'Order Shiped',
                  'Your order has Shiped to your location'),
              _createPathDown('9 Sep 2019 11:32', 'Order Arrived',
                  'The Order has arrived to your location'),
              SizedBox(
                height: 90,
              ),
              RaisedButton(
                onPressed: () {
                  // showModalBottomSheet<void>(
                  //   context: context,
                  //   isScrollControlled: true,
                  //   builder: (BuildContext context) {
                  //     return _showPaymentPopup();
                  //   },
                  // );

                  Navigator.push(
                    // ignore: prefer_const_constructors
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) =>
                          CodeScreen(),
                      transitionDuration: Duration.zero,
                    ),
                  );
                },
                color: kPrimaryColor,
                padding: EdgeInsets.symmetric(horizontal: 50),
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Scan QR",
                  style: TextStyle(
                      fontSize: 14, letterSpacing: 2.2, color: Colors.white),
                ),
              )
            ],
          ),
        ));
  }

  Widget _createPathTop(
      String date, String orderStatus, String orderDescription) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 0),
          width: 16,
          height: 16,
          decoration: const BoxDecoration(
            shape: BoxShape
                .circle, // You can use like this way or like the below line
            //borderRadius: new BorderRadius.circular(30.0),
            color: PRIMARY_COLOR,
          ),
        ),
        IntrinsicHeight(
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 7.5, right: 7.5),
                child: Container(
                  width: 1,
                  color: PRIMARY_COLOR,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 32, right: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(orderStatus,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: CHARCOAL)),
                      SizedBox(
                        height: 4,
                      ),
                      Text(date,
                          style:
                              TextStyle(color: Colors.grey[400], fontSize: 11)),
                      SizedBox(
                        height: 8,
                      ),
                      Text(orderDescription,
                          style: TextStyle(color: BLACK_GREY)),
                      SizedBox(
                        height: 24,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _createPath(String date, String orderStatus, String orderDescription) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 0),
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            shape: BoxShape
                .circle, // You can use like this way or like the below line
            //borderRadius: new BorderRadius.circular(30.0),
            color: Colors.grey[400],
          ),
        ),
        IntrinsicHeight(
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 7.5, right: 7.5),
                child: Container(
                  width: 1,
                  color: Colors.grey[400],
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 32, right: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(orderStatus,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: CHARCOAL)),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(date,
                          style:
                              TextStyle(color: Colors.grey[400], fontSize: 11)),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(orderDescription,
                          style: TextStyle(color: BLACK_GREY)),
                      const SizedBox(
                        height: 24,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _createPathDown(
      String date, String orderStatus, String orderDescription) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 0),
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            shape: BoxShape
                .circle, // You can use like this way or like the below line
            //borderRadius: new BorderRadius.circular(30.0),
            color: Colors.grey[400],
          ),
        ),
        IntrinsicHeight(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 48, right: 48),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(orderStatus,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: CHARCOAL)),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(date,
                          style:
                              TextStyle(color: Colors.grey[400], fontSize: 11)),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(orderDescription,
                          style: const TextStyle(color: BLACK_GREY)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
