import 'package:flutter/material.dart';


class FriendsBox extends StatelessWidget
{
  
  final String title = "Friends";
  const FriendsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
            decoration: BoxDecoration(
              color: Colors.blue,
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
            height: 200,
            padding: EdgeInsets.fromLTRB(15, 20, 15, 30),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 97, 182, 252),
            ),
            // child: Text(content,
            // style: TextStyle(
            //   color: Colors.white,
            //   fontSize: 18,
            //   fontWeight: FontWeight.normal
            // ),)
          )
        ],
      ),]
    );
    
  }
  
}