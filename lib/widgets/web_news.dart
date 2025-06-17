import 'package:flutter/material.dart';

class WebNewsCard extends StatelessWidget
{
  const WebNewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Opacity(
            opacity: 0.7,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                    color: const Color.fromARGB(255, 157, 188, 205),
                    child: Text("网站资讯", style: TextStyle(
                      color: Colors.white,
                      fontSize: 28
                    ),),
                  ),
                  Container(
                    width: double.infinity,
                    height: 250,
                    color: const Color.fromARGB(255, 202, 201, 201),
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 30),
                    child: null
                  ),          
                ]
              ),
          );
  }
}