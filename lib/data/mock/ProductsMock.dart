class ProductsMock {
  static List<Map<String, dynamic>> products = [
    {
      "id": 1,
      "name": "Arroz",
      "price": "3.00",
      "image_path": null,
    },
    {
      "id": 2,
      "name": "Feijão",
      "price": "5.00",
      "image_path": null,
    },
    {
      "id": 3,
      "name": "Batata",
      "price": "4.00",
      "image_path": null,
    },
  ];

  List<Map> fetch() {
    return products;
  }
}
