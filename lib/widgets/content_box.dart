import 'package:flutter/material.dart';


class ContentBox extends StatelessWidget
{
  
  final String title;
  final Widget contentWidget;
  
  const ContentBox({super.key, required this.title, required this.contentWidget});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(128, 52, 155, 240),
                borderRadius:BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                border: BoxBorder.fromLTRB(
                  top: BorderSide(color: Colors.white, width: 4),
                  left: BorderSide(color: Colors.white, width: 4),
                  right: BorderSide(color: Colors.white, width: 4),
                )
              ),
              alignment:Alignment.centerLeft,
              child: Text(title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),)
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(15, 20, 15, 30),
              decoration: BoxDecoration(
                color: const Color.fromARGB(240, 138, 202, 255),
                borderRadius:BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                border: BoxBorder.fromLTRB(
                  bottom: BorderSide(color: Colors.white, width: 4),
                  left: BorderSide(color: Colors.white, width: 4),
                  right: BorderSide(color: Colors.white, width: 4),
                )
              ),
              child: contentWidget,
            )
          ],
        ),
      ]
    );
    
  }
  
}