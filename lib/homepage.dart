import 'package:flutter/material.dart';
import 'package:my_web_page/homepage/about_me_experience.dart';
import 'package:my_web_page/homepage/friends.dart';
import 'package:my_web_page/homepage/project.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  final String aboutme = "Hello everyone, this is Zichun Wang (汪子淳). Currently, I am working as a software engineer in the 3D engine team of BYD. I received a master's degree in software engineering at Peking University, and a Bachlor's degreen in Material Science and engineering at Shanghai Jiao Tong University. When I was an undergraduate, I also took some courses about Chinese traditional painting.\n\n"
    "I am very interested in the direction of combining computers and arts, so my dream career is to become a technical artist. Besides, I'm also interested in games, travel and novels.\n\n"
    "I used to live in Shanghai and Beijing for a long time and currently settle in Shenzhen. Beijing is my favorite big city in China. There I met my lover. If you want to travel to Beijing, you can contact me to seek some suggestions.";

  final String experience = " · 2025.02 ~ Present: Software Engineer, BYD Company Ltd. \n"
        " · 2022.07 ~ 2024.07: Software Engineer, Huawei Technologies Co., Ltd. \n"
        " · 2021.06 ~ 2021.08: Gameplay Engineer Intern, Tencent Technology Co., Ltd.";

  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
        body:LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) 
        { 
          double margin_width = constraints.maxWidth*0.1;
          return 
          ListView(
            children: [Container(
              padding: EdgeInsets.fromLTRB(margin_width, 0, margin_width, 0),
              decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/blog_background.jpg'),
              fit: BoxFit.fill
            )
              ),
              // width: constraints.maxWidth,
              // height: constraints.maxHeight,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Flexible(
                    flex: 14,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 40, 8, 40),
                      child: Column(
                        children: [
                          
                          // About me
                          AboutMeOrExperience(title: "About me", content: aboutme),
                          SizedBox(height: 40,),
                          // Experience
                          AboutMeOrExperience(title: "Experience", content: experience),
                          SizedBox(height: 40,),
                          // Project
                          ProjectsBox(),
                          SizedBox(height: 40,),
                      
                          // Friends
                          FriendsBox(),
                        ],
                      ),
                    ),
                  ),

                  Flexible(
                    flex: 6,
                    child: 
                    Padding(
                      padding: const EdgeInsets.fromLTRB(80, 40, 8, 40),
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SizedBox(height: 70,),
                                Container(
                                  width: 180,
                                  height: 180,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: ClipOval(child: Image.asset('assets/images/web_background1.jpg',
                                  fit: BoxFit.cover,)),
                                ),
                                SizedBox(height: 10,),
                                Text("Zichun Wang"),
                                SizedBox(height: 10,),
                                
                                Text("汪子淳"),
                                SizedBox(height: 10,),
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
                            SizedBox(height: 100,),
                            Opacity(
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
                                    height: 200,
                                    color: const Color.fromARGB(255, 202, 201, 201),
                                    padding: EdgeInsets.fromLTRB(15, 20, 15, 30),
                                    child: null
                                    ),
                                    
                          ]),)

                                ],
                              ),
                            )

                        ),
            ]),
                    ),
                  
            
                ],
              
            
          );
        
        })

      );



  }
}