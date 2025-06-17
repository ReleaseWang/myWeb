import 'package:flutter/material.dart';
// import 'package:my_web_page/homepage/about_me_experience.dart';
// import 'package:my_web_page/homepage/friends.dart';
// import 'package:my_web_page/homepage/project.dart';
import 'package:my_web_page/widgets/content_box.dart';
import 'package:my_web_page/widgets/friend_widgets.dart';
import 'package:my_web_page/widgets/myself.dart';
import 'package:my_web_page/widgets/web_news.dart';

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
    Widget aboutMeContent = Text(aboutme,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal
                                )
                              );
    Widget experienceContent = Text(experience,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal
                                )
                              );
    Widget friendsContent = Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FriendsLink(imagePath: 'assets/images/yanxingwang.jpg', urlString: "https://cv.ywang.site/experiences/"),
                  FriendsLink(imagePath: 'assets/images/yueyuhu.jpg', urlString: "https://huzi96.github.io/"),
                  FriendsLink(imagePath: 'assets/images/jingmengcui.jpg', urlString: "https://jingmeng-cui.netlify.app/"),
                  
                ]);
    return
      Scaffold(
        body:LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) 
        { 
          double marginWidth = constraints.maxWidth*0.1;
          return 
          ListView(
            children: [Container(
              padding: EdgeInsets.fromLTRB(marginWidth, 0, marginWidth, 0),
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
                          ContentBox(
                            title: "About me", 
                            contentWidget: aboutMeContent
                          ),
                          SizedBox(height: 40,),
                          ContentBox(
                            title: "Experience", 
                            contentWidget: experienceContent  
                          ),
                          SizedBox(height: 40,),
                          // Project
                          ContentBox(
                            title: "Project", 
                            contentWidget: Container(child: null,)  
                          ),
                          SizedBox(height: 40,),
                          ContentBox(
                            title: "Friends", 
                            contentWidget: friendsContent
                          ),
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
                            MySelfCard(
                              englishName: 'Zichun Wang', 
                              chineseName: '汪子淳', 
                              mail: 'wangzichunww AT gmail', 
                              address: 'Shenzhen, China', 
                              picPath: 'assets/images/zichunwang.jpg',
                            ),
                            SizedBox(height: 100,),
                            WebNewsCard(),
                          ],
                        ),
                    )
                  ),
            ]),
          )],
      );
      })
      );
  }
}