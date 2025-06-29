import 'package:flutter/material.dart';

class WebNewsCard extends StatelessWidget
{
  const WebNewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: double.infinity,
           decoration: BoxDecoration(
            color: const Color.fromARGB(240, 157, 188, 205),
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
          padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
          child: Text("网站资讯", style: TextStyle(
            color: Colors.white,
            fontSize: 26
          ),),
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color.fromARGB(165, 226, 226, 226),
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
          height: 250,
          padding: EdgeInsets.fromLTRB(15, 20, 15, 30),
          child: null
        ),          
      ]
    );
  }
}