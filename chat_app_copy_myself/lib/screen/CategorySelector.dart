import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  @override
  Widget build(BuildContext context) {

    int selectedIndex = 0 ;

    List<String> categories = [
      'Messages',
      'Online',
      'Groups',
      'Requests'

  ];
    return Container(
      height: 90.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context,index) {
            return GestureDetector(
              onTap: (){
                setState(){
                  selectedIndex++;
                }
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal:30.0,vertical: 10.0) ,
                child: Text(
                    categories[index],
                style: TextStyle(
                      color: index == selectedIndex? Colors.white : Colors.white60,
                      letterSpacing: 1.2,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold

                ),
                ),
              ),
            );
          }
      ),
    );
  }
}
