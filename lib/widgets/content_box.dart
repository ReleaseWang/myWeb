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
        Opacity(
          opacity: 0.85,
          child: Column(
            
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
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
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(15, 20, 15, 30),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 97, 182, 252),
                ),
                child: contentWidget,
              )
            ],
          ),
        ),
      ]
    );
    
  }
  
}