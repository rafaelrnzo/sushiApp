// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:rent_app/assets/color.dart';
import 'package:rent_app/services/topUpList.dart';
import 'package:sizer/sizer.dart';

class TopUp extends StatefulWidget {
  // const TopUp({Key key}) : super(key: key);

  @override
  State<TopUp> createState() => _TopUpState();
}

class _TopUpState extends State<TopUp> {
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
          leading: BackButton(color: secondary),
          title: Text(
            "Top Up",
            style: TextStyle(color: secondary),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(110),
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1, color: Colors.black12))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 8.h,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26),
                          // color: primary,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Ionicons.wallet,
                                      size: 20,
                                    ),
                                    const SizedBox(width: 2),
                                    Text(
                                      "Cash",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Rp212.000",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Text("Rafael Lorenzo")
                          ]),
                    ),
                  ),
                  TabBar(
                    unselectedLabelColor: Colors.black54,
                    labelColor: primary,
                    indicatorColor: primary,
                    tabs: [
                      Tab(
                        text: "Package",
                      ),
                      Tab(
                        text: "Input",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(children: [
          PackageScreen(),
          Container(
            color: Color.fromARGB(10, 0, 0, 0),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Card(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.add_card_rounded,
                                        size: 20,
                                      ),
                                      const SizedBox(width: 2),
                                      Text(
                                        "Top Up",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "SushiPay",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Set the border radius
                                  ),
                                  labelText:
                                      'Your Value', // Add a label to the input
                                  hintText: 'Type Value', // Add a hint text
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class PackageScreen extends StatelessWidget {
  const PackageScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Color.fromARGB(10, 0, 0, 0),
            child: Container(
              margin: EdgeInsets.all(16),
              child: GridView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 2,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                  ),
                  children: topUps
                      .map((item) => CardTopUp(
                          title: item.title,
                          price: item.price,
                          lineThrough: item.lineThrough))
                      .toList()),
            ),
          ),
        ],
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
                        fontSize: 13,
                        color: primary),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "${lineThrough}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
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
                          style:
                              TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '${name}',
                          style:
                              TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                              child: Text("Continue" ,style: TextStyle(fontSize: 16 ),)
                            ),
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
