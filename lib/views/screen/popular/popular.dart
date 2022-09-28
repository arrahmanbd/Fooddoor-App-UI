import 'package:flutter/material.dart';
import '../../../constant/default.dart';
import '../../../models/productlist.dart';

class PopularItems extends StatefulWidget {
  const PopularItems({super.key});

  @override
  State<PopularItems> createState() => _PopularItemsState();
}

class _PopularItemsState extends State<PopularItems> {
  List<Product> propular = product;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
            physics: AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: product.length,
            itemBuilder: ((context, index) =>
                PopularItem(product: product[index], press: () {})),
          ),
        ),
      ],
    );
  }
}

class PopularItem extends StatelessWidget {
  final Product product;
  final Function press;
  const PopularItem({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only( right: 16.0),
      color: twhite,
    /*   height: 153,
      width: 126, */
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:12.0,vertical: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              product.image,
              width: 103,
              height: 103,
            ),
            SizedBox(
              height: 9,
            ),
            Text(
              product.title,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
