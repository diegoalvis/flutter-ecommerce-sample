import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/model/data.dart';
import 'package:flutter_ecommerce_app/src/model/product.dart';
import 'package:flutter_ecommerce_app/src/themes/light_color.dart';
import 'package:flutter_ecommerce_app/src/themes/theme.dart';
import 'package:flutter_ecommerce_app/src/widgets/title_text.dart';

class OrderCartPage extends StatefulWidget {
  const OrderCartPage({Key key}) : super(key: key);

  @override
  _OrderCartPageState createState() => _OrderCartPageState();
}

class _OrderCartPageState extends State<OrderCartPage> {
  String orderId = "ext-53855";

  Widget _productWidget(Product model, {Product replacement}) {
    final isReplacement = replacement != null;
    return Column(
      children: [
        isReplacement ? Divider(thickness: 2) : SizedBox(),
        Opacity(opacity: isReplacement ? 0.5 : 1, child: _item(model)),
        isReplacement ? _item(replacement) : SizedBox(),
        isReplacement
            ? Row(children: [
                Spacer(flex: 2),
                _optionButton('Accept', onPressed: () {
                  updateProduct(true, model);
                }),
                Spacer(flex: 1),
                _optionButton('Deny', onPressed: () {
                  updateProduct(false, model);
                }, color: LightColor.orange),
                Spacer(flex: 2),
              ])
            : SizedBox(),
      ],
    );
  }

  void updateProduct(bool approved, Product product) {
    product.confirmedByCustomer = approved;
    final a = {'${product.productId}': product};

    FirebaseFirestore.instance.collection('orders').doc(orderId).set(a).then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  Widget _optionButton(String text, {VoidCallback onPressed, Color color}) {
    return FlatButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: color ?? LightColor.blue,
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 4),
          child: TitleText(
            text: text,
            color: LightColor.background,
            fontWeight: FontWeight.w400,
          ),
        ));
  }

  Widget _item(Product model) {
    return Container(
      height: 80,
      child: Row(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              height: 70,
              width: 70,
              child: Image.network(
                model.imageUrl,
                loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent loadingProgress) {
                  return Container(
                    decoration: BoxDecoration(
                        color: loadingProgress == null ? Colors.white : LightColor.lightGrey,
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.network(model.imageUrl),
                  );
                },
              ),
            ),
          ),
          Expanded(
              child: ListTile(
                  title: TitleText(
                    text: model.name,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      TitleText(
                        text: '\$ ',
                        color: LightColor.red,
                        fontSize: 12,
                      ),
                      TitleText(
                        text: model.price.toString(),
                        fontSize: 14,
                      ),
                    ],
                  ),
                  trailing: Container(
                    width: 35,
                    height: 35,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: LightColor.lightGrey.withAlpha(150),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TitleText(
                      text: 'x${model.quantity}',
                      fontSize: 12,
                    ),
                  )))
        ],
      ),
    );
  }

  Widget _price() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        TitleText(
          text: '${AppData.cartList.length} Items',
          color: LightColor.grey,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        TitleText(
          text: '\$${getPrice()}',
          fontSize: 18,
        ),
      ],
    );
  }

  Widget _submitButton(BuildContext context) {
    return FlatButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: LightColor.blue,
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 12),
          width: AppTheme.fullWidth(context) * .7,
          child: TitleText(
            text: 'Next',
            color: LightColor.background,
            fontWeight: FontWeight.w500,
          ),
        ));
  }

  double getPrice() {
    double price = 0;
    AppData.cartList.forEach((x) {
      price += x.price * x.quantity;
    });
    return price;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: _flotingButton(),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xfffbfbfb),
              Color(0xfff7f7f7),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          child: Container(
              padding: AppTheme.padding,
              child: Column(
                children: <Widget>[
                  AppBarTitle(
                    text: 'Falcon',
                    subTitle: " by Pelican Team",
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TitleText(
                      text: 'My order',
                      fontSize: 27,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Divider(),
                  Expanded(
                    child: ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          final product = data[index];
                          if (product.replacedProductId != null) return SizedBox();
                          final replacement = data.firstWhere(
                              (element) => element.replacedProductId == product.productId,
                              orElse: () => null);
                          return _productWidget(product, replacement: replacement);
                        }),
                  ),
                  Divider(
                    thickness: 1,
                    height: 70,
                  ),
                  _price(),
                  SizedBox(height: 30),
                  _submitButton(context),
                  SizedBox(height: 30)
                ],
              )),
        ),
      ),
    );
  }

  List<Product> data = [];

  @override
  void initState() {
    FirebaseFirestore.instance.collection('orders').doc(orderId).snapshots().listen((event) {
      setState(() {
        data = List<Product>.from(event.data().values.map((model) => Product.fromJson(model)));
      });
    });
  }
}

