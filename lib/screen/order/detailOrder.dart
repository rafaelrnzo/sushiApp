// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:rent_app/assets/color.dart';
import 'package:sizer/sizer.dart';

class OrderDetail extends StatefulWidget {
  const OrderDetail({Key? key}) : super(key: key);

  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  List<StepperData> stepperData = [
    StepperData(
        subtitle: StepperText("Order placed"),
        iconWidget: Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              color: primary,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Icon(
            Icons.check,
            color: Colors.white,
            size: 15,
          ),
        )),
    StepperData(
        subtitle: StepperText("Delivered"),
        iconWidget: Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              color: primary,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Icon(
            Icons.check,
            color: Colors.white,
            size: 15,
          ),
        )),
    StepperData(
        subtitle: StepperText("Finished"),
        iconWidget: Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Colors.black12, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Icon(
            Icons.check,
            color: Colors.black12,
            size: 15,
          ),
        )),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black12,
      appBar: AppBar(
        elevation: 1,
        toolbarHeight: 7.5.h,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: BackButton(color: secondary),
        title: Text(
          'Order Details',
          style: TextStyle(color: secondary),
        ),
        // centerTitle: true,
        actions: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(
                  Ionicons.refresh,
                  color: secondary,
                  // size: 2.w,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                color: Colors.white,
                child: Column(
                  children: [
                    StepperOrder(stepperData: stepperData),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Divider(
                        color: Colors.black12,
                        height: 2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 16),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_on_sharp,
                                color: Colors.black26,
                                size: 18,
                              ),
                              Text(
                                " Rafael Lorenzo",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              Text(
                                "  (+62)8509219080",
                                style: TextStyle(
                                    color: Colors.black26, fontSize: 14),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Jl.Ranco Indah no.66,faris bakti,Jalur Gaza,India,Indonesia",
                                style: TextStyle(
                                    color: Colors.black26, fontSize: 13),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                )),
            SizedBox(
              height: 10,
            ),

            Container(
              width: double.infinity,
              color: Colors.white,
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "SushiGo - Cilandak (Order)",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  OrderList(),
                  OrderList(),
                  OrderList(),
                  OrderList(),
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Container(
              width: double.infinity,
              color: Colors.white,
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Order Summary",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  OrderSummary(
                    title: "Subtotal",
                    value: "Rp121.400",
                  )
                ],
              ),
            ),

            // Expanded(child: StepperOrder(stepperData: stepperData)),
          ],
        ),
      ),
      bottomNavigationBar: Material(
        elevation: 5, // Tambahkan elevasi di sini
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20), // Sesuaikan radius sesuai keinginan
          ),
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Ionicons.wallet,
                              size: 4.5.w,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              "Total Payment:",
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        Text(
                          "Rp212.000",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: primary),
                        ),
                      ],
                    )),
                SizedBox(
                  // height: 6.h,
                  // width: 14.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      // elevation: ,
                      backgroundColor:
                          MaterialStateProperty.all<Color>(primary),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    child: Text(
                      'Write Review',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OrderList extends StatelessWidget {
  const OrderList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                  height: 6.h,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Colors.black12)),
                    child: Image.asset(
                        "assets/images/makimono/california-roll.jpg"),
                  )),
            ),
            SizedBox(
              width: 4,
            ),
            Expanded(child: Text("(1)")),
            Expanded(
              flex: 10,
              child: Container(
                // color: primary,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("California Roll"),
                    Text(
                      "Rp45.500",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 2,
            ),
          ]),
    );
  }
}

class OrderSummary extends StatelessWidget {
  const OrderSummary({
    required this.title,
    required this.value,
    Key? key,
  }) : super(key: key);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                // color: primary,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${title}"),
                    Text(
                      "${value}",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 2,
            ),
          ]),
    );
  }
}

class StepperOrder extends StatelessWidget {
  const StepperOrder({
    Key? key,
    required this.stepperData,
  }) : super(key: key);

  final List<StepperData> stepperData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: AnotherStepper(
        stepperList: stepperData,
        stepperDirection: Axis.horizontal,
        iconWidth: 30,
        iconHeight: 30,
        activeBarColor: primary,
        inActiveBarColor: Colors.black12,
        inverted: true,
        verticalGap: 0,
        activeIndex: 1,
        barThickness: 2,
      ),
    );
  }
}
