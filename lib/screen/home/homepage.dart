// import 'dart:html';

// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations, unnecessary_brace_in_string_interps, unused_local_variable, unused_import

// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:rent_app/assets/color.dart';
import 'package:rent_app/screen/home/qrScanner.dart';
import 'package:rent_app/screen/home/topup/topUpPage.dart';
import 'package:rent_app/screen/home/widgets/appbarHome.dart';
import 'package:rent_app/screen/home/widgets/bannerHome.dart';
import 'package:rent_app/screen/home/widgets/buttonWithText.dart';
import 'package:rent_app/services/carsList.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 1;

  void incrementCount() {
    setState(() {
      count++;
    });
  }

  void decrementCount() {
    if (count > 1) {
      setState(() {
        count--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.shopping_cart),backgroundColor: primary,) ,
        appBar: homeAppbar(context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              BannerHome(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  children: [
                    SizedBox(
                      height: 12.h,
                      width: double.infinity,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        elevation: 0,
                        color: primary,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 1,
                                child: SizedBox(
                                  width: 30.w,
                                  height: double.infinity,
                                  child: Card(
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    color: Colors.white,
                                    child: Container(
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Ionicons.wallet,
                                                  size: 4.5.w,
                                                ),
                                                const SizedBox(width: 2),
                                                Text(
                                                  "Cash",
                                                  style:
                                                      TextStyle(fontSize: 12),
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
                                        )),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ButtonWithText(
                                        onTapButton: () {
                                          Navigator.of(context)
                                              .push(MaterialPageRoute(
                                            builder: (context) =>
                                                 TopUp(),
                                          ));
                                        },
                                        text: 'Top Up',
                                        icon: Ionicons.add),
                                    ButtonWithText(
                                        onTapButton: () {
                                          Navigator.of(context)
                                              .push(MaterialPageRoute(
                                            builder: (context) =>
                                                const QRViewExample(),
                                          ));
                                        },
                                        text: 'Pay',
                                        icon: Ionicons.arrow_forward),
                                    ButtonWithText(
                                        onTapButton: () {
                                          Navigator.of(context)
                                              .push(MaterialPageRoute(
                                            builder: (context) =>
                                                const QRViewExample(),
                                          ));
                                        },
                                        text: 'Promo',
                                        icon: Ionicons.ticket),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 16, bottom: 8),
                      // height: 10,
                      child: Row(
                        children: [
                          Text(
                            "Featured",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    GridView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10.0,
                          crossAxisSpacing: 10.0,
                        ),
                        children: foods
                            .map(
                              (item) => CardFood(
                                name: item.name,
                                price: item.price,
                                image: item.img,
                                count: count,
                                // incrementCount: incrementCount,
                                // decrementCount: decrementCount,
                              ),
                            )
                            .toList())
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class CardFood extends StatelessWidget {
  const CardFood({
    required this.price,
    required this.name,
    required this.image,
    required this.count,
    // required this.incrementCount,
    // required this.decrementCount,
    Key? key,
  }) : super(key: key);

  final String price;
  final int count;
  final String name;
  final String image;
  // final void Function() incrementCount;
  // final void Function() decrementCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 50.w,
      child: InkWell(
        onTap: () {
          _showBottomSheet(
            context,
            '${name}',
            '${image}',
            '${price}',
            count,
          );
        },
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(flex: 2, child: Image.asset('${image}')),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${name}',
                        // textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${price}",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void _showBottomSheet(
  BuildContext context,
  String name,
  String image,
  String price,
  int count,
  // void Function() incrementCount,
  // void Function() decrementCount
) {
  String priceMenu = '${price}';

  RegExp regex = RegExp(r'(\d+)');
  Match? match = regex.firstMatch(priceMenu);

  double pricee = 0.0;

  if (match != null) {
    pricee = double.tryParse(match.group(1)!) ?? 0.0;
  }

  double totalPrice = pricee * count;

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
            Expanded(
              flex: 3,
              child: Image.asset('${image}'),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '${name}',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum neque leo, interdum at ante vitae, consequat rhoncus eros. Pellentesque vel',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
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
                          IconButton(
                            icon: Icon(
                              Ionicons.remove,
                              color: primary,
                            ),
                            onPressed: () {
                              // decrementCount();
                            },
                          ),
                          SizedBox(width: 10),
                          Text(
                            '$count',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 10),
                          IconButton(
                            icon: Icon(
                              Ionicons.add,
                              color: primary,
                            ),
                            onPressed: () {
                              // incrementCount();
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Add to Basket'),
                            Text(
                              '\Rp${totalPrice.toStringAsFixed(3)}',
                            ),
                          ],
                        ),
                      ),
                    ),
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
