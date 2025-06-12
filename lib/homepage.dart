import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
        body:LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) 
        { 
          double margin_width = constraints.maxWidth*0.15;
          return 
          Container(
            margin: EdgeInsets.fromLTRB(margin_width, 0, margin_width, 0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(53, 3, 168, 244)
            ),
            // width: constraints.maxWidth,
            // height: constraints.maxHeight,
            child: Row(
              children: [
                
                Flexible(
                  flex: 13,
                  child: Column(
                    children: [
                      
                  
                      Container(),
                      Container(),
                      Container(),
                    ],
                  ),
                ),
                Flexible(
                  flex: 7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 70,),
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: ClipOval(child: Image.asset('assets/Image/web_background1.jpg',
                        fit: BoxFit.cover,)),
                      ),
                      SizedBox(height: 5,),
                      Text("Zichun Wang"),
                      SizedBox(height: 5,),
                      
                      Text("汪子淳"),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.mail),
                          SizedBox(width: 10,),
                          Text("wangzichunww AT gmail")
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.location_city),
                          SizedBox(width: 10,),
                          Text("Shenzhen, China")
                        ],
                      ),
                      
                   
                    ],
                  ),
                )

              ],
            ),
          );
        
        })

      );



  }
}