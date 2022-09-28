import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fooddoor/constant/default.dart';
import 'package:fooddoor/views/widget/slider.dart';
class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Column(
        children: [
          Container(child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'assets/icons/logo.svg',
                  height: 24,
                  width: 152,
                ),
                SvgPicture.asset('assets/icons/svgmenu.svg',height: 24,width: 16,)
              ],
            ),
            ),
            SizedBox(height: 8,),
            Container(child:  Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  'assets/icons/menu.svg',
                  height: 10,
                  width: 10,
                ),
                SizedBox(width: 8,),
               Text('204 Foxrun St.Davison, MI 48423',style: TextStyle(fontSize: 12,color: twhite),)
              ],
            ),
            ),
            SizedBox(height: 16,),
            SizedBox(
              height: 44,
              child: TextFormField(
                style: TextStyle(color: twhite.withOpacity(.4)),
                decoration: InputDecoration(
                  hintText: 'Type Something',
                  hintStyle: TextStyle(fontSize: 16.0,height: 3, color:twhite.withOpacity(.4)),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset('assets/icons/search.svg',height: 5,width: 5,),
                  ),
                  filled: true,
                  fillColor: twhite.withOpacity(.2),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 0, style: BorderStyle.none,),
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
            ),
           
        ],
      ),
    );
  }
}