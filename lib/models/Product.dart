class Product {
  int id;
  String name;
  double price;
  String imagePath;

  Product(
    this.name,
    this.price, {
    this.id,
    this.imagePath,
  });

  Product.fromMap(Map data) {
    this.id = data['id'];
    this.name = data['name'];
    this.price = double.parse(data['price']);
    this.imagePath = data['image_path'];
  }
}
