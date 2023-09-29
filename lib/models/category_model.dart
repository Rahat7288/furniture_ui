class CategoryModel {
  CategoryModel({
    this.id,
    this.createdAt,
    this.title,
    this.image,
    this.numOfProducts,
  });

  CategoryModel.fromJson(dynamic json) {
    id = json['id'];
    createdAt = json['createdAt'];
    title = json['title'];
    image = json['image'];
    numOfProducts = json['numOfProducts'];
  }
  String? id;
  String? createdAt;
  String? title;
  String? image;
  num? numOfProducts;
  CategoryModel copyWith({
    String? id,
    String? createdAt,
    String? title,
    String? image,
    num? numOfProducts,
  }) =>
      CategoryModel(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        title: title ?? this.title,
        image: image ?? this.image,
        numOfProducts: numOfProducts ?? this.numOfProducts,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['createdAt'] = createdAt;
    map['title'] = title;
    map['image'] = image;
    map['numOfProducts'] = numOfProducts;
    return map;
  }
}

//default category model
CategoryModel categoryModel = CategoryModel(
  id: "1",
  title: "Armchair",
  image: "https://i.imgur.com/JqKDdxj.png",
  numOfProducts: 10,
);
