// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:rent_app/assets/color.dart';
import 'package:rent_app/screen/profile/proofPayment.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          const Expanded(flex: 2, child: _TopPortion()),
          SizedBox(
            height: 16,
          ),
          Expanded(
              flex: 5,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        // height: 1000,
                        width: double.infinity,
                        child: Text(
                          'Transaction',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 16),
                      CardHistory(),
                      CardHistory(),
                      CardHistory(),
                      CardHistory(),
                      CardHistory(),
                      CardHistory(),
                    ],
                  ),
                ),
              )),
          // Expanded(
          //   flex: 6,
          //   child: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Column(
          //       children: [
          //         Text(
          //           "Rafael Lorenzo",
          //           style: Theme.of(context)
          //               .textTheme
          //               .headline6
          //               ?.copyWith(fontWeight: FontWeight.bold),
          //         ),
          //         const SizedBox(height: 16),
          //         // Row(

          //         const _ProfileInfoRow()
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class CardHistory extends StatelessWidget {
  const CardHistory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 1000,
      width: double.infinity,
      child: InkWell(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ProofPayment(),
        ));
        },
        child: Card(
          margin: EdgeInsets.only(bottom: 16),
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Pre-order',
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Success',
                    style: TextStyle(
                        fontSize: 16,
                        ),
                  ),
                  Text(
                    '10 Sep 2023',
                    style: TextStyle(
                        fontSize: 14,
                        ),
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}

class _ProfileInfoRow extends StatelessWidget {
  const _ProfileInfoRow({Key? key}) : super(key: key);

  final List<ProfileInfoItem> _items = const [
    ProfileInfoItem("Cash", 90000),
    ProfileInfoItem("Point", 12000),
    // ProfileInfoItem("Following", 200),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      constraints: const BoxConstraints(maxWidth: 400),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _items
            .map((item) => Expanded(
                    child: Row(
                  children: [
                    if (_items.indexOf(item) != 0) const VerticalDivider(),
                    Expanded(child: _singleItem(context, item)),
                  ],
                )))
            .toList(),
      ),
    );
  }

  Widget _singleItem(BuildContext context, ProfileInfoItem item) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              item.value.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Text(
            item.title,
            style: Theme.of(context).textTheme.caption,
          )
        ],
      );
}

class ProfileInfoItem {
  final String title;
  final int value;
  const ProfileInfoItem(this.title, this.value);
}

class _TopPortion extends StatelessWidget {
  const _TopPortion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 0),
          decoration: BoxDecoration(
            color: primary,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                width: 80,
                height: 80,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80')),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Rafael Lorenzo",
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const _ProfileInfoRow()
            ],
          ),
        )
      ],
    );
  }
}
