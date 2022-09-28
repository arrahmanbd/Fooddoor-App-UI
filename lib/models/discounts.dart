
class Deals {
  final String image, name;
  final int itemCount;

  Deals(
    this.image,
    this.name,
    this.itemCount,
  );
}

List<Deals> deals = [
  Deals('assets/deals/img1.png', 'Rice',23, ),
  Deals('assets/deals/img2.png', 'Vegitable', 25),
  Deals('assets/deals/img3.png', 'Meat', 28),
];
