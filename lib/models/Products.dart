class Products {
  static final products = [
    Item(
      id: 1,
      img: "https://www.pakmobizone.pk/wp-content/uploads/2021/10/Apple-iphone-13-Pink-2.png",
      name: "Dummy Products",
      price: 12
    )
  ];
}

class Item {
  final int id;
  final String img;
  final String name;
  final num price;

  Item({required this.id, required this.img, required this.name, required this.price});
}