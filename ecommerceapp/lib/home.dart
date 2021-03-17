import 'package:ecommerceapp/widgets/carousel.dart';
import 'package:ecommerceapp/widgets/categories_products.dart';
import 'package:ecommerceapp/widgets/products_grid.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> menu = ['Home','My account','My orders' , 'Categories'];
  List<String> iconsName = ['home','shopping_basket','shopping_basket','dashboard'];
  List<IconData> icons = [Icons.home, Icons.person,Icons.shopping_basket,Icons.dashboard];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation : 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Fash app'),
        actions: [
          IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {}),
        ],
      ),
      drawer: Drawer(
        child: ListView(
      children: [
        //header
        UserAccountsDrawerHeader(
          accountName: Text('hama'), accountEmail: Text('test'),
          currentAccountPicture: GestureDetector(
            child: CircleAvatar(

              backgroundImage: AssetImage('asset/images/c1.jpg'),
            ),
          ),
        ),
               for (int i = 0 ; i < menu.length ; i++)
                    InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text(menu[i]),
                      leading: Icon(icons[i]),

                    ),
                  ),
            Divider()
          ],
        ),
      ),
      body: ListView(
        children: [
          CarouselWidget(),
          Padding(padding: EdgeInsets.all(20.0),child: Text('Categories'),),
          CategoriesProducts(),
          Padding(padding: EdgeInsets.all(20.0),child: Text('Recent products'),),
          ProductsGrid()
        ],
      ),
    );
  }
}
