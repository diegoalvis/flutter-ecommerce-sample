import 'dart:convert';

import 'package:flutter_ecommerce_app/src/model/category.dart';
import 'package:flutter_ecommerce_app/src/model/product.dart';

class AppData {


  static List<Product> cartList = List<Product>.from(json.decode(productsJson).map((model)=> Product.fromJson(model)));

  static List<Category> categoryList = [
    Category(),
    Category(
        id: 1,
        name: "Bakery",
        image: "http://cdn.shopify.com/s/files/1/1817/2419/products/20250-Loaf-Francese-A_1200x1200.jpg?v=1590152804",
        isSelected: true),
    Category(
        id: 2,
        name: "Drinks",
        image:
            "https://ipcdn.freshop.com/resize?url=https://images.freshop.com/00893441002715/f58e2ab53855dc476acd92fefcf2ba4e_large.png&width=256&type=webp&quality=80"),
    Category(
        id: 3,
        name: "Snacks",
        image:
            "https://driveimg1.intermarche.com/fr/Content/images/boitmal/produit/zoom/49C156789A3B70D4A6AC7D29E59BF3EA.jpg"),
    Category(
        id: 4, name: "Fruits & Veggies", image: "https://pbs.twimg.com/profile_images/689609039605460992/mva6YmZ-.jpg"),
  ];
  static List<String> showThumbnailList = [
    "assets/shoe_thumb_5.png",
    "assets/shoe_thumb_1.png",
    "assets/shoe_thumb_4.png",
    "assets/shoe_thumb_3.png",
  ];
  static String description =
      "Clean lines, versatile and timeless—the people shoe returns with the Nike Air Max 90. Featuring the same iconic Waffle sole, stitched overlays and classic TPU accents you come to love, it lets you walk among the pantheon of Air. ßNothing as fly, nothing as comfortable, nothing as proven. The Nike Air Max 90 stays true to its OG running roots with the iconic Waffle sole, stitched overlays and classic TPU details. Classic colours celebrate your fresh look while Max Air cushioning adds comfort to the journey.";

  static String productsJson = '''
  [
  {
    "productId": "d1e6c4a9-12f2-4ad5-aa0f-067a651292fb",
    "replacedProductId": null,
    "sku": "074030000651",
    "barcodes": [
      "074030000651",
      "074030000651"
    ],
    "name": "Galbani Mozzarella Santa Lucia Cheese 125G",
    "category": "Dairies",
    "imageUrl": "https://images.deliveryhero.io/image/nv/Singapore/Hao-Megamart/8850006303979.jpg",
    "pricingType": "UNIT",
    "price": 1.34,
    "quantity": 1,
    "totalPrice": 1.34,
    "pickupPricingType": null,
    "description": "",
    "comment": "",
    "pickupPriority": 3,
    "status": "NOT_PROCESSED",
    "notFoundReason": null,
    "realPrice": null,
    "foundQuantity": null
  },
  {
    "productId": "cbe71466-5e17-4b78-8255-72ae1142b89e",
    "replacedProductId": null,
    "sku": "6281050214638",
    "barcodes": [
      "6281050214638"
    ],
    "name": "Americana Popcorn Chicken 400 G",
    "category": "Frozen",
    "imageUrl": "https://images.deliveryhero.io/image/nv/Singapore/Hao-Megamart/8888025000036.jpg",
    "pricingType": "UNIT",
    "price": 1.26,
    "quantity": 1,
    "totalPrice": 1.26,
    "pickupPricingType": null,
    "description": "",
    "comment": "",
    "pickupPriority": 4,
    "status": "NOT_PROCESSED",
    "notFoundReason": null,
    "realPrice": null,
    "foundQuantity": null
  },
  {
    "productId": "0d6dbf13-9b8d-4717-b774-538ad1896127",
    "replacedProductId": null,
    "sku": "9120008998657",
    "barcodes": [
      "9120008998657"
    ],
    "name": "Hollinger Organic Bio Black Currant Juice 1L",
    "category": "Dairies",
    "imageUrl": "https://images.deliveryhero.io/image/nv/Singapore/Hao-Megamart/8013399170676.jpg",
    "pricingType": "UNIT",
    "price": 1.95,
    "quantity": 1,
    "totalPrice": 1.95,
    "pickupPricingType": null,
    "description": "",
    "comment": "",
    "options": null,
    "pickupPriority": 4,
    "status": "NOT_PROCESSED",
    "notFoundReason": null,
    "realPrice": null,
    "foundQuantity": null
  },
  {
    "productId": "576bd05b-270c-4725-8c71-f335b1ebeb36",
    "replacedProductId": null,
    "sku": "089836187635",
    "barcodes": [
      "089836187635"
    ],
    "name": "Simply Organic Curry Powder 3Oz",
    "category": "Spices",
    "imageUrl": "https://media.sultan-center.com/media/catalog/product/cache/image/700x560/e9c3970ab036de70892d86c6d221abfe/3/0/301841225.jpg",
    "pricingType": "UNIT",
    "price": 2.5,
    "quantity": 1,
    "totalPrice": 2.1,
    "pickupPricingType": null,
    "description": "",
    "comment": "",
    "pickupPriority": 5,
    "status": "NOT_PROCESSED",
    "notFoundReason": null,
    "realPrice": null,
    "foundQuantity": null
  },
  {
    "productId": "7aead938-c6dd-475b-9bae-9b37245b0ca5",
    "replacedProductId": null,
    "sku": "040000503170",
    "barcodes": [
      "040000503170"
    ],
    "name": "Snickers Fun Size Crisper Milk Chocolate 180g",
    "category": "Snacks",
    "imageUrl": "https://media.sultan-center.com/media/catalog/product/cache/image/700x560/e9c3970ab036de70892d86c6d221abfe/3/0/302831782.jpg",
    "pricingType": "UNIT",
    "price": 1,
    "quantity": 1,
    "totalPrice": 1,
    "pickupPricingType": null,
    "description": "",
    "comment": "",
    "pickupPriority": 4,
    "status": "NOT_PROCESSED",
    "notFoundReason": null,
    "realPrice": null,
    "foundQuantity": null
  },
  {
    "productId": "b31ed9af-7030-4d9e-af48-c70280a08afb",
    "replacedProductId": null,
    "sku": "744473912353",
    "barcodes": [
      "744473912353"
    ],
    "name": "So Delicious Organic Coconut Milk 946ml",
    "category": "Dairies",
    "imageUrl": "https://images.deliveryhero.io/image/nv/Singapore/Hao-Megamart/8888345120056.jpg",
    "pricingType": "UNIT",
    "price": 1.35,
    "quantity": 1,
    "totalPrice": 1.35,
    "pickupPricingType": null,
    "description": "",
    "comment": "",
    "pickupPriority": 6,
    "status": "NOT_PROCESSED",
    "notFoundReason": null,
    "realPrice": null,
    "foundQuantity": null
  }
]
  ''';
}
