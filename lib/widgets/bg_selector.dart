import 'package:flutter/material.dart';


class BgSelector extends StatelessWidget

{
  final VoidCallback func;
  final double leftMargin;
  final double rightMargin;
  final int index;

  const BgSelector({super.key, required this.func, required this.leftMargin, required this.rightMargin, required this.index});
  

 @override
  Widget build(BuildContext context) {
    return  GestureDetector(
              onTap: func,
              child: Container(
                margin: EdgeInsets.fromLTRB(leftMargin, 10, rightMargin, 10),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(
                    color: Colors.white,
                    width: 2.3
                  )
                ),
                width: 25,
                height: 25,
                child: Center(child: 
                  Text("$index", style:const TextStyle(
                    color: Colors.white,
                    fontSize: 11
                  ))
                  )
                ),
            );
  }
}