import 'package:state_management/widgets/products_grid.dart';
import 'package:flutter/material.dart';


class ProductsOverviewScreen extends StatelessWidget {
//  const ProductsOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Shop"),
      ),
      body: ProductsGrid(),
    );
  }
}
