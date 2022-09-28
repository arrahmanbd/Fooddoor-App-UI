import 'package:flutter/material.dart';
import '../../../constant/default.dart';
import '../../../models/discounts.dart';

class DealItems extends StatefulWidget {
  const DealItems({super.key});

  @override
  State<DealItems> createState() => _DealItemsState();
}

class _DealItemsState extends State<DealItems> {
  List<Deals> deal=deals;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
            physics: AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: deals.length,
            itemBuilder: ((context, index) =>
                DealItem(deals: deals[index], press: () {})),
          ),
        ),
      ],
    );
  }
}

class DealItem extends StatelessWidget {
  final Deals deals;
  final Function press;
  const DealItem({
    Key? key,
    required this.deals,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only( right: 16.0),
      color: twhite,
    /*   height: 153,
      width: 126, */
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            deals.image,
            width: 135,
          ),
         
          Padding(
            padding: const EdgeInsets.only(top:18.0,left: 12,bottom:16 ),
            child: Text(
              deals.name,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
         
        ],
      ),
    );
  }
}
