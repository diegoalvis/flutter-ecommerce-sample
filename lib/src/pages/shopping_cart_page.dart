import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/model/data.dart';
import 'package:flutter_ecommerce_app/src/model/product.dart';
import 'package:flutter_ecommerce_app/src/themes/light_color.dart';
import 'package:flutter_ecommerce_app/src/themes/theme.dart';
import 'package:flutter_ecommerce_app/src/widgets/title_text.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({Key key}) : super(key: key);

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
        onPressed: () {
          Navigator.of(context).pushNamed('/order');
        },
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
    final products = AppData.cartList;
    return Container(
      padding: AppTheme.padding,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: ListView.builder(
              itemCount: products.length,
                itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 8.0),
                child: _item(products[index]),
              );
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
      ),
    );
  }
}
