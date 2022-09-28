import 'package:flutter/material.dart';
import 'package:fooddoor/constant/default.dart';
import 'package:fooddoor/models/category.dart';

class CatItems extends StatefulWidget {
  const CatItems({super.key});

  @override
  State<CatItems> createState() => _CatItemsState();
}

class _CatItemsState extends State<CatItems> {
  List<Category> cat = category;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:GridView.builder(gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 20,
        crossAxisCount: 4,
        childAspectRatio: 1
        ), 
        itemCount: cat.length, 
        itemBuilder: (context, index) => CatItem(cat: cat[index]),) 
    );
  }
}

class CatItem extends StatelessWidget {
  const CatItem({
    Key? key,
    required this.cat,
  }) : super(key: key);

  final Category cat;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 66,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(height:66,width:66,color:twhite,child: Image.asset(cat.image),),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: Text(cat.catname,style: const TextStyle(fontSize: 12),),
          )
        ],
      ),
    );
  }
}
