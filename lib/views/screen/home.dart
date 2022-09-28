// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:fooddoor/constant/default.dart';
import 'package:fooddoor/views/widget/slider.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../widget/appbar.dart';
import '../widget/bodyitem.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: body,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                color: teal,
                height: 258,
                child: const HomeAppBar(),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                top: 134,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          HomeSlider(),
                          Container(
                            color: body,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 28.0),
                              child: BodyItems(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: MediaQuery.of(context).size.height * .09,
          color: twhite,
          child: Column(
            children: [
              SalomonBottomBar(
                itemShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  //set border radius more than 50% of height and width to make circle
                ),
                currentIndex: _currentIndex,
                onTap: (i) => setState(() => _currentIndex = i),
                items: [
                  /// Home
                  SalomonBottomBarItem(
                     unselectedColor: tGrey,
                    icon: Icon(Icons.home),
                    title: Text("Home"),
                    selectedColor: Colors.teal,
                  ),
                  SalomonBottomBarItem(
                     unselectedColor: tGrey,
                    icon: Icon(Icons.book),
                    title: Text("Delivery"),
                    selectedColor: Colors.pink,
                  ),

                  /// Likes
                  SalomonBottomBarItem(
                    unselectedColor: tGrey,
                    icon: Icon(Icons.favorite_border),
                    title: Text("Likes"),
                    selectedColor: Colors.pink,
                  ),

                  /// Search
                  SalomonBottomBarItem(
                     unselectedColor: tGrey,
                    icon: Icon(Icons.shopping_cart),
                    title: Text("Search"),
                    selectedColor: Colors.orange,
                  ),

                  /// Profile
                  SalomonBottomBarItem(
                     unselectedColor: tGrey,
                    icon: Icon(Icons.person),
                    title: Text("Profile"),
                    selectedColor: Colors.teal,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
