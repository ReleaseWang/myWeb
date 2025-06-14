import 'package:flutter/material.dart';


class AboutMeOrExperience extends StatelessWidget
{
  
  final String title;
  final String? content;
  

  const AboutMeOrExperience({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
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
              padding: EdgeInsets.fromLTRB(15, 20, 15, 30),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 97, 182, 252),
              ),
              child: content==null?null : Text(content!,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.normal
              ),)
            )
          ],
        ),
      ]
    );
    
  }
  
}