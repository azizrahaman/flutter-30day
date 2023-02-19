class CatalogModel {
  static List<Item>? item;
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String brand;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.brand,
    required this.image,
  });

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'],
      name: map['title'],
      desc: map['description'],
      price: map['price'],
      brand: map['brand'],
      image: map['thumbnail'],
    );
  }

  toMap() => {
    "id": id,
    "name": name,
    "desc": desc,
    "price": price,
    "brand": brand,
    "image": image,
  };
}
