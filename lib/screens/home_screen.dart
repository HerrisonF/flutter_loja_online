import 'package:flutter/material.dart';
import 'package:flutter_app_loja_firebase/tabs/home_tab.dart';
import 'package:flutter_app_loja_firebase/tabs/oders_tab.dart';
import 'package:flutter_app_loja_firebase/tabs/places_tab.dart';
import 'package:flutter_app_loja_firebase/tabs/products_tab.dart';
import 'package:flutter_app_loja_firebase/widgets/cart_button.dart';
import 'package:flutter_app_loja_firebase/widgets/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _pagecontroller = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pagecontroller,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pagecontroller),
          floatingActionButton: CartButton(),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Produtos"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pagecontroller),
          body: ProductsTab(),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Lojas"),
            centerTitle: true,
          ),
          body: PlacesTab(),
          drawer: CustomDrawer(_pagecontroller),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Meus Pedidos"),
            centerTitle: true,
          ),
          body: OrdersTab(),
          drawer: CustomDrawer(_pagecontroller),
        ),
      ],
    );
  }
}
