import 'package:flutter_ecommerce_app/src/model/category.dart';
import 'package:flutter_ecommerce_app/src/model/product.dart';

class AppData {
  static List<Product> cartList = [
    Product(
        id: 1,
        name: 'Lakerol Sugarfree Pastilles Forest Berries | 27 g',
        price: 2.5,
        isSelected: true,
        isliked: false,
        image: 'https://images.deliveryhero.io/image/nv/Singapore/Hao-Megamart/8013399170676.jpg',
        category: "Drinks"),
    Product(
        id: 2,
        name: 'WALKERS Belgian Chocolate Chunk Biscuits | 150 g',
        price: 190.00,
        isliked: false,
        image: 'https://images.deliveryhero.io/image/nv/Singapore/Hao-Mart/placement.jpg',
        category: "Bakery"),
    Product(
        id: 1,
        name: 'KNIFE Knife Blended Oil | 2 L',
        price: 220.00,
        isliked: false,
        image: 'https://images.deliveryhero.io/image/nv/Singapore/Hao-Megamart/8888025000036.jpg',
        category: "Fruits & Veggies"),
    Product(
        id: 2,
        name: 'Star Brand Artificial Almond Flavour | 25 g',
        price: 240.00,
        isSelected: true,
        isliked: false,
        image: 'https://images.deliveryhero.io/image/nv/Singapore/Hao-Megamart/8888345120056.jpg',
        category: "Snacks"),
    Product(
        id: 2,
        name: 'The Natural Confectionery Smoothie Chews | 220 g',
        price: 240.00,
        isSelected: true,
        isliked: false,
        image: 'https://images.deliveryhero.io/image/nv/Singapore/Hao-Megamart/9310434001629.jpg',
        category: "Snacks"),
    Product(
        id: 2,
        name: 'Quaker Instant Oats | 12 x31 g',
        price: 240.00,
        isSelected: true,
        isliked: false,
        image: 'https://images.deliveryhero.io/image/nv/Singapore/Hao-Megamart/9556174815502.jpg',
        category: "Snacks"),
    Product(
        id: 2,
        name: 'Ambi Pur AIR Splash of Revival | 275 g',
        price: 240.00,
        isSelected: true,
        isliked: false,
        image: 'https://images.deliveryhero.io/image/nv/Singapore/Hao-Megamart/4902430627696.jpg',
        category: "Snacks"),
    Product(
        id: 2,
        name: 'Maggi 5-Minute Peas and Carrot | 50 g',
        price: 240.00,
        isSelected: true,
        isliked: false,
        image: 'https://images.deliveryhero.io/image/nv/Singapore/Hao-Megamart/7613035817968.jpg',
        category: "Snacks"),
    Product(
        id: 2,
        name: 'Myojo Thai Tom Yam Cup Noodle | 80 gg',
        price: 240.00,
        isSelected: true,
        isliked: false,
        image: 'https://images.deliveryhero.io/image/nv/Singapore/Hao-Megamart/8888107000541.jpg',
        category: "Snacks"),
    // Product(
    //     id:1,
    //     name: 'Nike Air Max 97',
    //     price: 190.00,
    //     isliked: false,
    //     image: 'assets/small_tilt_shoe_2.png',
    //     category: "Trending Now"),
  ];
  static List<Category> categoryList = [
    Category(),
    Category(
        id: 1,
        name: "Bakery",
        image: "http://cdn.shopify.com/s/files/1/1817/2419/products/20250-Loaf-Francese-A_1200x1200.jpg?v=1590152804",
        isSelected: true),
    Category(id: 2, name: "Drinks", image: "https://ipcdn.freshop.com/resize?url=https://images.freshop.com/00893441002715/f58e2ab53855dc476acd92fefcf2ba4e_large.png&width=256&type=webp&quality=80"),
    Category(id: 3, name: "Snacks", image: "https://driveimg1.intermarche.com/fr/Content/images/boitmal/produit/zoom/49C156789A3B70D4A6AC7D29E59BF3EA.jpg"),
    Category(id: 4, name: "Fruits & Veggies", image: "https://pbs.twimg.com/profile_images/689609039605460992/mva6YmZ-.jpg"),
  ];
  static List<String> showThumbnailList = [
    "assets/shoe_thumb_5.png",
    "assets/shoe_thumb_1.png",
    "assets/shoe_thumb_4.png",
    "assets/shoe_thumb_3.png",
  ];
  static String description =
      "Clean lines, versatile and timeless—the people shoe returns with the Nike Air Max 90. Featuring the same iconic Waffle sole, stitched overlays and classic TPU accents you come to love, it lets you walk among the pantheon of Air. ßNothing as fly, nothing as comfortable, nothing as proven. The Nike Air Max 90 stays true to its OG running roots with the iconic Waffle sole, stitched overlays and classic TPU details. Classic colours celebrate your fresh look while Max Air cushioning adds comfort to the journey.";
}
