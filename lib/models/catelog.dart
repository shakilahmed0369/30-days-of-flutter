class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "iPhone 9",
        description: "An apple mobile which is nothing like apple",
        price: 549,
        color: "#fff0e",
        image: "https://cdn.dummyjson.com/product-images/1/thumbnail.jpg"
    ),
  ];
}

class Item {
  final int id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.color,
      required this.image});
}
