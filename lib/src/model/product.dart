class Product {
  String productId;
  String replacedProductId;
  String sku;
  List<String> barcodes;
  String name;
  String category;
  String imageUrl;
  double price;
  int quantity;
  String description;
  String comment;
  String status;
  bool isSelected = false;
  bool confirmedByCustomer = false;

  Product({this.productId,
    this.replacedProductId,
    this.sku,
    this.barcodes,
    this.name,
    this.category,
    this.imageUrl,
    this.price,
    this.quantity,
    this.description,
    this.comment,
    this.status});

  Product.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    replacedProductId = json['replacedProductId'];
    sku = json['sku'];
    barcodes = json['barcodes'].cast<String>();
    name = json['name'];
    category = json['category'];
    imageUrl = json['imageUrl'];
    price = double.parse(json['price'].toString());
    quantity = json['quantity'];
    description = json['description'];
    comment = json['comment'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productId'] = this.productId;
    data['replacedProductId'] = this.replacedProductId;
    data['sku'] = this.sku;
    data['barcodes'] = this.barcodes;
    data['name'] = this.name;
    data['category'] = this.category;
    data['imageUrl'] = this.imageUrl;
    data['price'] = this.price;
    data['quantity'] = this.quantity;
    data['description'] = this.description;
    data['comment'] = this.comment;
    data['status'] = this.status;
    return data;
  }
}
