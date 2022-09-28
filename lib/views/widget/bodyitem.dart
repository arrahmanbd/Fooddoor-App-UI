import 'package:flutter/material.dart';
import 'package:fooddoor/views/screen/category/category.dart';
import 'package:fooddoor/views/screen/popular/popular.dart';
import 'package:fooddoor/views/widget/titlebar.dart';

import '../screen/deals/deals.dart';
class BodyItems extends StatelessWidget {
  const BodyItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Titlebar(catname: 'Popular'),
        const SizedBox(height: 153,child: PopularItems()),
        Titlebar(catname: 'Voucher'),
        Image.asset('assets/images/Bitmap.png',height: 115,fit: BoxFit.cover, width: double.infinity,),
        Titlebar(catname: 'Collection'),
        const SizedBox(height: 188,child: DealItems()),
        Titlebar(catname: 'Category'),
        const SizedBox(height: 230,child: CatItems()),
      ],
    );
  }
}
