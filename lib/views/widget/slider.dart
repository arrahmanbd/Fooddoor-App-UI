import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fooddoor/constant/default.dart';
import 'package:fooddoor/models/sliderimage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeSlider extends StatefulWidget {
  HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  List imglist = sliderList;
  int sliderindex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:28.0,vertical:10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 181.0,
            child: CarouselSlider.builder(
                itemCount: imglist.length,
                itemBuilder: ((context, index, realIndex) {
                  final url = imglist[index];
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      constraints: BoxConstraints.expand(height: 200.0,width: 615),
                      child:Image.asset(
                      url,
                      fit: BoxFit.fitWidth,
                    ),
                    ),
                  );
                  
                }),
                options: CarouselOptions(
                  //For Indicator
                  onPageChanged: (index, reason) {
                    setState(() {
                      sliderindex = index;
                    });
                  },
                  autoPlay: true,
                  /*  aspectRatio: 16/9, */
                  autoPlayCurve: Curves.fastOutSlowIn,
                  viewportFraction: 1.0,
                )),
          ),
          SizedBox(
            height: 10,
          ),
          AnimatedSmoothIndicator(
            activeIndex: sliderindex,
            count: imglist.length,
            effect: WormEffect(
                dotHeight: 4,
                dotWidth: 4,
                dotColor: tGrey,
                activeDotColor: teal),
          )
        ],
      ),
    );
  }
}
