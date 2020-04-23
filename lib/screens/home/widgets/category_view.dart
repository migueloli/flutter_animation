import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {

  final List<String> categorys = [
    "TRABALHO",
    "ESTUDOS",
    "CASA"
  ];

  int category = 0;

  void selectForward(){
    setState(() {
      category++;
      if(category >= categorys.length){
        category = 0;
      }
    });
  }

  void selectBackward(){
    setState(() {
      category--;
      if(category < 0){
        category = categorys.length-1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white30,
          onPressed: selectBackward,
        ),
        Text(
          categorys[category].toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 20,
            color: Colors.white,
            letterSpacing: 1.2
          ),
        ),
        IconButton(
          icon: Icon(Icons.arrow_forward_ios),
          color: Colors.white30,
          onPressed: selectForward,
        ),
      ],
    );
  }
}
