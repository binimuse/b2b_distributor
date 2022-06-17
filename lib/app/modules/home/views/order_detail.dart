import 'package:b2b_distributor/constant/cache_image_network.dart';
import 'package:b2b_distributor/constant/constants.dart';
import 'package:b2b_distributor/constant/global_style.dart';
import 'package:b2b_distributor/constant/reusable_widget.dart';
import 'package:flutter/material.dart';

import 'order_status.dart';

class OrderDetailPage extends StatefulWidget {
  const OrderDetailPage({Key? key}) : super(key: key);

  @override
  _OrderDetailPageState createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: GlobalStyle.appBarIconThemeColor,
        ),
        systemOverlayStyle: GlobalStyle.appBarSystemOverlayStyle,
        centerTitle: true,
        title: const Text('Feb 4, 2020 18:13', style: GlobalStyle.appBarTitle),
        backgroundColor: GlobalStyle.appBarBackgroundColor,
        bottom: _reusableWidget.bottomAppBar(),
      ),
      body: ListView(
        children: [
          _buildOrderInformation(),
          _reusableWidget.divider1(),
          _reusableWidget.deliveryInformation(),
          _reusableWidget.divider1(),
          _buildOrderSummary(),
          _reusableWidget.divider1(),
          _buildTotalSummary()
        ],
      ),
    );
  }

  Widget _buildOrderInformation() {
    return Container(
      color: Colors.grey[100],
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Order ID', style: TextStyle(color: BLACK77, fontSize: 12)),
          Text('FDA-XSJF-259', style: TextStyle(color: BLACK77, fontSize: 12))
        ],
      ),
    );
  }

  Widget _buildRestaurantInformation() {
    double imageSize = MediaQuery.of(context).size.width / 7;
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          ClipOval(
              child: buildCacheNetworkImage(
                  width: imageSize,
                  height: imageSize,
                  url: "assets/images/oil.png")),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Item 1 - Crown Street',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4),
                Text('Delivered',
                    style: TextStyle(fontSize: 12, color: BLACK77))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildOrderSummary() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Order Summary', style: GlobalStyle.orderSummary),
          SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('1x', style: GlobalStyle.orderCount),
              SizedBox(width: 24),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                            child: Text('Hainam',
                                style: GlobalStyle.orderFoodTitle,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis)),
                        SizedBox(width: 8),
                        //  Text('\$4.5', style: GlobalStyle.orderPrice)
                      ],
                    ),
                    SizedBox(height: 4),
                    Text('Regular',
                        style: GlobalStyle.orderOptions,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis),
                    SizedBox(height: 4),
                    Text('New',
                        style: GlobalStyle.orderOptions,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis),
                    SizedBox(height: 4),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('2x', style: GlobalStyle.orderCount),
              SizedBox(width: 24),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                            child: Text('Rice',
                                style: GlobalStyle.orderFoodTitle,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis)),
                        SizedBox(width: 8),
                        // Text('\$5.5', style: GlobalStyle.orderPrice)
                      ],
                    ),
                    SizedBox(height: 4),
                    Text('Large',
                        style: GlobalStyle.orderOptions,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis),
                    SizedBox(height: 4),
                    Text('Extra ',
                        style: GlobalStyle.orderOptions,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis),
                    SizedBox(height: 4),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildTotalSummary() {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RaisedButton(
                padding: EdgeInsets.symmetric(horizontal: 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {},
                child: Text("Reject",
                    style: TextStyle(
                        fontSize: 14, letterSpacing: 2.2, color: Colors.black)),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    // ignore: prefer_const_constructors
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) =>
                          OrderStatusPage(),
                      transitionDuration: Duration.zero,
                    ),
                  );

                  // showModalBottomSheet<void>(
                  //   context: context,
                  //   isScrollControlled: true,
                  //   builder: (BuildContext context) {
                  //     return _showPaymentPopup();
                  //   },
                  // );
                },
                color: kPrimaryColor,
                padding: EdgeInsets.symmetric(horizontal: 50),
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Confirm",
                  style: TextStyle(
                      fontSize: 14, letterSpacing: 2.2, color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _showPaymentPopup() {
    return SingleChildScrollView(
      child:
          StatefulBuilder(builder: (BuildContext context, StateSetter mystate) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 12, bottom: 12),
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                    color: Colors.grey[500],
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: const Text('Choose Delivery',
                  style: GlobalStyle.chooseCourier),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 32,
              color: Colors.grey[400],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: buildCacheNetworkImage(
                      url:
                          "https://png.pngtree.com/png-vector/20210227/ourlarge/pngtree-delivery-by-motorbike-png-image_2971090.jpg",
                      width: 70),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text('Delivery name', style: GlobalStyle.courierTitle),
                const Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Text(
                    'Motorbike',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontFamily: 'WorkSans',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Icon(
                    Icons.check_box,
                    color: Colors.green,
                    size: 25.0,
                    textDirection: TextDirection.rtl,
                    semanticLabel:
                        'Icon', // Announced in accessibility modes (e.g TalkBack/VoiceOver). This label does not show in the UI.
                  ),
                ),
              ]),
            ),
            Divider(
              height: 15,
              color: Colors.grey[400],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: buildCacheNetworkImage(
                      url:
                          "https://png.pngtree.com/png-vector/20210227/ourlarge/pngtree-delivery-by-motorbike-png-image_2971090.jpg",
                      width: 70),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text('Delivery name', style: GlobalStyle.courierTitle),
                const Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Text(
                    'Motorbike',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontFamily: 'WorkSans',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Icon(
                    Icons.check_box,
                    color: Colors.green,
                    size: 25.0,
                    textDirection: TextDirection.rtl,
                    semanticLabel:
                        'Icon', // Announced in accessibility modes (e.g TalkBack/VoiceOver). This label does not show in the UI.
                  ),
                ),
                Divider(
                  height: 15,
                  color: Colors.grey[400],
                ),
              ]),
            ),
          ],
        );
      }),
    );
  }
}
