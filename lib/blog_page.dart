import 'package:flutter/material.dart';
import 'package:my_web_page/homepage.dart';

class BlogPage extends StatefulWidget {

  const BlogPage({super.key});

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  int pageIndex = 0;

  // SafeArea(
  //           child: NavigationRail(
  //             extended: false,
  //             destinations: [
  //               NavigationRailDestination(
  //                 icon: Icon(Icons.home),
  //                 label: Text('Home'),
  //               ),
  //               NavigationRailDestination(
  //                 icon: Icon(Icons.favorite),
  //                 label: Text('Favorites'),
  //               ),
  //             ],
  //             selectedIndex: selectedIndex,    // ← Change to this.
  //             onDestinationSelected: (value) {

  //               // ↓ Replace print with this.
  //               setState(() {
  //                 selectedIndex = value;
  //               });

  //             },
  //           ),
  //         ),


  @override
  Widget build(BuildContext context) {

    Widget page;
    switch (pageIndex) {
      case 0:
        page =HomePage();
        break;
      case 1:
        page  = Container(
          decoration: BoxDecoration(color: Colors.orange),
        );
        break;
      case 2:
        page  = Container(
          decoration: BoxDecoration(color: Colors.yellow),
        );
        break;
      case 3:
        page  = Container(
          decoration: BoxDecoration(color: Colors.green),
        );
        break;
      default:
        throw UnimplementedError('no widget for $pageIndex');
    }


    return
      Scaffold(
        appBar: AppBar(
          // 可以考虑使用TabBar
          backgroundColor: const Color.fromARGB(53, 10, 155, 246),
          title: Text('Zichun Wang'),
          actions: [
            IconButton(icon: Icon(Icons.pages), onPressed: () {setState(() {
              pageIndex = 0;  
            });
            }),
            IconButton(icon: Icon(Icons.access_time_sharp), onPressed: () {setState(() {
              pageIndex = 1;  
            });
            }),
            IconButton(icon: Icon(Icons.music_note), onPressed: () {
              setState(() {
              pageIndex = 2;  
            });
            }),
            IconButton(icon: Icon(Icons.sunny), onPressed: () {setState(() {
              pageIndex = 3;  
            });
            })
          ],
        ),
        body:LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) 
        {
              return page;
        })

      );



  }
}