import 'package:state_management/providers/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  // //const ({ Key? key }) : super(key: key);
  // final String title;

  // ProductDetailScreen(this.title);
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;

    final loadedProduct = Provider.of<Products>(context)
        .items
        .firstWhere((prod) => prod.id == productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),

      ),
      body: Container(
          child: Column(
            children: [
              Text(loadedProduct.description),
              Image.network(loadedProduct.imageUrl)
            ],
          )),
    );
  }
}
