import 'package:flutter/material.dart';
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
  final String aboutme = "Hello, I'm Zichun Wang (汪子淳), a Software Engineer in the 3D Engine Team at BYD. \n\n"
"I hold a Master's degree in Software Engineering from Peking University and a Bachelor's degree in Materials Science and Engineering from Shanghai Jiao Tong University. During my undergraduate studies, I complemented my technical background with coursework in Traditional Chinese Painting, fostering a unique perspective at the intersection of technology and art.\n\n"
"My passion lies in bridging computing with artistic expression, driving my ambition to become a Technical Artist. Beyond my professional pursuits, I enjoy gaming, exploring new destinations, and reading novels.\n\n"
"Having previously resided in Shanghai and Beijing, I am now based in Shenzhen. Beijing remains my favorite Chinese metropolis—a city where I met my partner and formed lasting memories. If you're planning a trip to Beijing, feel free to reach out for personalized recommendations.";

  final String experience = " · 2025.02 ~ Present: Software Engineer, BYD Company Ltd. \n"
        " · 2022.07 ~ 2024.07: Software Engineer, Huawei Technologies Co., Ltd. \n"
        " · 2021.06 ~ 2021.08: Gameplay Engineer Intern, Tencent Technology Co., Ltd.";

  final String projectString = " · This Web: https://github.com/ReleaseWang/myWeb";

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
    Widget projectContent = Text(projectString,
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
                  FriendsLink(imagePath: 'assets/images/haji.jpg', urlString: "https://scholar.google.com/citations?hl=zh-CN&user=gySXTFMAAAAJ&view_op=list_works"),
                ]);
    return
      Scaffold(
        body:LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) 
        { 
          double marginWidth = constraints.maxWidth*0.1;
          return 
          Stack(
            children: [
              Image.asset(
                'assets/images/blog_background.jpg',
                width: constraints.maxWidth,
                height: constraints.maxHeight,
                fit: BoxFit.fill
              ),
              
              ListView(
              children: [
                Container(
                padding: EdgeInsets.fromLTRB(marginWidth, 0, marginWidth, 0),
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
                              contentWidget: projectContent  
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
                  ),
            ]
          );
      })
      );
  }
}