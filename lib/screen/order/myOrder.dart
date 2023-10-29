// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:rent_app/assets/color.dart';
import 'package:rent_app/screen/order/detailOrder.dart';
import 'package:rent_app/screen/order/preOrder.dart';
import 'package:rent_app/services/topUpList.dart';
import 'package:sizer/sizer.dart';

class MyOrderPage extends StatefulWidget {
  // const MyOrderPage({Key key}) : super(key: key);

  @override
  State<MyOrderPage> createState() => _MyOrderPageState();
}

class _MyOrderPageState extends State<MyOrderPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.history_rounded,
                  color: Colors.black,
                ))
          ],
          backgroundColor: Colors.transparent,
          // leading: BackButton(color: secondary),
          title: Text(
            "My Order",
            style: TextStyle(color: secondary),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1, color: Colors.black12))),
              child: TabBar(
                unselectedLabelColor: Colors.black54,
                labelColor: primary,
                indicatorColor: primary,
                tabs: [
                  Tab(
                    text: "Order",
                  ),
                  Tab(
                    text: "Pre-Order",
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(children: [
          OrderScreen(),
          Container(
            // color: Color.fromARGB(10, 0, 0, 0),
            child: Container(
              margin: EdgeInsets.all(8),
              child: GridView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.8,
                    crossAxisCount: 1,
                    mainAxisSpacing: 6.0,
                    crossAxisSpacing: 6.0,
                  ),
                  children: [
                    CardPreOrder(),
                    CardOrder(),
                    CardOrder(),
                    CardOrder(),
                  ]),
            ),
          ),
        ]),
      ),
    );
  }
}

class OrderScreen extends StatelessWidget {
  const OrderScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            // color: Color.fromARGB(10, 0, 0, 0),
            child: Container(
              margin: EdgeInsets.all(8),
              child: GridView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.8,
                    crossAxisCount: 1,
                    mainAxisSpacing: 6.0,
                    crossAxisSpacing: 6.0,
                  ),
                  children: [
                    CardOrder(),
                    CardOrder(),
                    CardOrder(),
                    CardOrder(),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

class CardOrder extends StatelessWidget {
  const CardOrder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => OrderDetail(),
        ));
      },
      child: Card(
        elevation: 0,
        color: Colors.transparent,
        child: SizedBox(
          width: double.infinity,
          // height: 10.h,
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black12),
                // color: primary,
                borderRadius: BorderRadius.circular(8)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "90382108301232",
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        "7 Sep 2023",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 90,
                          height: 90,
                          child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.black12)),
                              child: Image.asset(
                                  "assets/images/makimono/beef-cheese-roll.jpg")),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dine in",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Rp189.900",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  " (5 menu) - SushiPay",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Finished",
                        style: TextStyle(fontSize: 14),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: primary),
                                borderRadius: BorderRadius.circular(4)),
                            // width: 10.w,
                            height: 3.5.h,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  elevation: 0,
                                ),
                                onPressed: () {
                                  // Button press logic here
                                },
                                child: Text(
                                  "Review",
                                  style:
                                      TextStyle(fontSize: 14, color: primary),
                                )),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          SizedBox(
                            // width: 10.w,
                            height: 3.5.h,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: primary,
                                  elevation: 0,
                                ),
                                onPressed: () {
                                  // Button press logic here
                                },
                                child: Text(
                                  "Re-Order",
                                  style: TextStyle(fontSize: 14),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}

class CardPreOrder extends StatelessWidget {
  const CardPreOrder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PreOrderDetail(),
        ));
      },
      child: Card(
        elevation: 0,
        color: Colors.transparent,
        child: SizedBox(
          width: double.infinity,
          // height: 10.h,
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black12),
                // color: primary,
                borderRadius: BorderRadius.circular(8)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "90382108301232",
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        "7 Sep 2023",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 90,
                          height: 90,
                          child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.black12)),
                              child: Image.asset(
                                  "assets/images/makimono/beef-cheese-roll.jpg")),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pre-Order - 12 Sep 2023",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Rp189.900",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  " (5 menu) - SushiPay",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Waiting",
                        style: TextStyle(fontSize: 14),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: primary),
                                borderRadius: BorderRadius.circular(4)),
                            // width: 10.w,
                            height: 3.5.h,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  elevation: 0,
                                ),
                                onPressed: () {
                                  // Button press logic here
                                },
                                child: Text(
                                  "Review",
                                  style:
                                      TextStyle(fontSize: 14, color: primary),
                                )),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          SizedBox(
                            // width: 10.w,
                            height: 3.5.h,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: primary,
                                  elevation: 0,
                                ),
                                onPressed: () {
                                  // Button press logic here
                                },
                                child: Text(
                                  "Re-Order",
                                  style: TextStyle(fontSize: 14),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}

class CardTopUp extends StatelessWidget {
  const CardTopUp({
    required this.title,
    required this.price,
    required this.lineThrough,
    Key? key,
  }) : super(key: key);

  final String title;
  final String price;
  final String lineThrough;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _showPayBottomSheet(context, '${title}', '${price}');
      },
      child: Card(
        elevation: 0,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.black12,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          // decoration: BoxDecoration(
          //     // borderRadius: BorderRadius .circular(8),
          //     border: Border.all(color: Colors.black12)),
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Text(
                    "${title}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "${price}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: primary),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "${lineThrough}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Colors.black26,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

void _showPayBottomSheet(
  BuildContext context,
  String name,
  // String image,
  String price,
  // int count,
) {
  showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        height: MediaQuery.of(context).size.height * 0.6,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.close),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            // Expanded(child: child)

            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Pay:',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '${name}',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      // width: 30.w,
                      decoration: BoxDecoration(
                        // color: primary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 90.w,
                            height: 6.h,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: primary,
                                  elevation: 0,
                                ),
                                onPressed: () {
                                  // Button press logic here
                                },
                                child: Text(
                                  "Continue",
                                  style: TextStyle(fontSize: 16),
                                )),
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   height: 16,
                    // ),
                    // SizedBox(
                    //   width: 90.w,
                    //   height: 6.h,
                    //   child: ElevatedButton(
                    //     style: ElevatedButton.styleFrom(
                    //       primary: primary,
                    //       elevation: 0,
                    //     ),
                    //     onPressed: () {
                    //       // Button press logic here
                    //     },
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       children: [
                    //         Text('Add to Basket'),
                    //         Text(
                    //           '\Rp${totalPrice.toStringAsFixed(3)}',
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
