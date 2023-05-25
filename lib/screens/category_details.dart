import 'package:flutter/material.dart';

class CategoryDetails extends StatefulWidget {
  const CategoryDetails({Key? key}) : super(key: key);

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.keyboard_backspace_sharp),
        ),
        title: Text("sdfh"),
      ),
      body: Column(
        children: [
          Container(
            height: 43,
            width: 34,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
