// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rent_app/assets/color.dart';

class ProofPayment extends StatefulWidget {
  const ProofPayment({super.key});

  @override
  State<ProofPayment> createState() => _ProofPaymentState();
}

class _ProofPaymentState extends State<ProofPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        leading: BackButton(
          color: secondary,
        ),
        backgroundColor: Colors.transparent,
        // leading: BackButton(color: secondary),
        title: Text(
          "SushiGo",
          style: TextStyle(color: primary, fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        width: double.infinity,
        // color: Colors.white,
        // padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: Colors.green,
                    ),
                    Text(
                      'Success',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  '10 Sep 2023, 19:20',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            )),
            Expanded(
              flex: 4,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Merchant",
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(height: 6),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 12),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_pin,
                              color: primary,
                              size: 20,
                            ),
                            Text(
                              'SushiGo - Condet',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(height: 6),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              '-Rp265.900',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
                            ),
                          ],
                        ),
                      ),
                      Divider(height: 6),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Payment Detail",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Nominal',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  'Rp265.900',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Payment',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  'Rp0',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total',
                                  style: TextStyle(
                                    fontSize: 16,

                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                Text(
                                  'Rp265.900',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
              flex: 4,
              child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Text("")),
            ),
          ],
        ),
      ),
    );
  }
}
