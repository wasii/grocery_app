// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:grocery_app/constants.dart';
import 'package:grocery_app/models/products.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: grey.shade300,
        elevation: 0,
        leadingWidth: 140,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            children: [
              Icon(
                Icons.bubble_chart_rounded,
                color: blue,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: ('GRO'),
                      style: poppins.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: darkorange),
                    ),
                    TextSpan(
                      text: ('CERY'),
                      style: poppins.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: blue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_basket_rounded),
              color: darkorange,
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: white
              ),
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  hintText: 'Search want to buy.....',
                  hintStyle: poppins.copyWith(
                    fontSize: 14,
                    color: blue,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: blue,
                  ),
                  suffixIcon: Icon(
                    Icons.tune_rounded,
                    color: blue,
                  ),
                ),
              ),
            ),
            Wrap(
              children: products.map((e) => Container(
                        child: Image.asset(
                          'assets/${e.images[0]}',
                          height: 100,
              ))).toList(),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(),
    );
  }
}
