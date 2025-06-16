import 'package:flutter/material.dart';


class ProjectsBox extends StatelessWidget
{
  
  final String title = "Projects";
  const ProjectsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.85,
          child: Column(
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
              height: 100,
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
                ),
        ),]
    );
    
  }
  
}