class ProductsModel {
  ProductsModel({
    this.id,
    this.createdAt,
    this.title,
    this.price,
    this.category,
    this.image,
    this.subTitle,
    this.description,
  });
  // it creates a product model from json
  ProductsModel.fromJson(dynamic json) {
    id = json['id'];
    createdAt = json['createdAt'];
    title = json['title'];
    price = json['price'];
    category = json['category'];
    image = json['image'];
    subTitle = json['subTitle'];
    description = json['description'];
  }
  String? id;
  String? createdAt;
  String? title;
  num? price;
  String? category;
  String? image;
  String? subTitle;
  String? description;
  ProductsModel copyWith({
    String? id,
    String? createdAt,
    String? title,
    num? price,
    String? category,
    String? image,
    String? subTitle,
    String? description,
  }) =>
      ProductsModel(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        title: title ?? this.title,
        price: price ?? this.price,
        category: category ?? this.category,
        image: image ?? this.image,
        subTitle: subTitle ?? this.subTitle,
        description: description ?? this.description,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['createdAt'] = createdAt;
    map['title'] = title;
    map['price'] = price;
    map['category'] = category;
    map['image'] = image;
    map['subTitle'] = subTitle;
    map['description'] = description;
    return map;
  }
}

// default product model

ProductsModel productsModel = ProductsModel(
  id: "1",
  price: 1600,
  title: "Wood Frame",
  image: "https://i.imgur.com/sI4GvE6.png",
  category: "Chair",
  subTitle: "Tieton Armchair",
  description: description,
);
String description =
    "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work.";
