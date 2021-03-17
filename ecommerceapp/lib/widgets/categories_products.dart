import 'package:flutter/material.dart';

class CategoriesProducts extends StatefulWidget {
  @override
  _CategoriesProductsState createState() => _CategoriesProductsState();
}

class _CategoriesProductsState extends State<CategoriesProducts> {
  List<Categories> categories = [
    new Categories(image_location : 'asset/images/cats/tshirt.png', image_caption : 'T-Shirt'),
    new Categories(image_location : 'asset/images/cats/dress.png', image_caption : 'Dress'),
    new Categories(image_location : 'asset/images/cats/formal.png', image_caption : 'Formal'),
    new Categories(image_location : 'asset/images/cats/informal.png', image_caption : 'Informal'),
    new Categories(image_location : 'asset/images/cats/shoe.png', image_caption : 'Shoe'),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: Container(
        height: 80.0,
        child: ListView.builder(
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index) {
              return categories[index];
            } )
      )
    );
  }
}
class Categories extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Categories({
    this.image_location,
    this.image_caption
});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0.0),
      child: InkWell(
        onTap: (){},
        // without this container a error "hasSize" would happen
        child: Container(
          width: 90.0,
          child: ListTile(
            title: Image.asset(image_location),
            // to do alignment
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                  image_caption,
                softWrap: false,

              )
            )
          ),
        ) ,
      ),
    );
  }
}

