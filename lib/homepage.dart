import 'dart:math';
import 'dart:ui';

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
  final String aboutme =
      "Hello, I'm Zichun Wang (汪子淳), a Software Engineer in the 3D Engine Team at BYD. \n\n"
      "I hold a Master's degree in Software Engineering from Peking University and a Bachelor's degree in Materials Science and Engineering from Shanghai Jiao Tong University. During my undergraduate studies, I complemented my technical background with coursework in Traditional Chinese Painting, fostering a unique perspective at the intersection of technology and art.\n\n"
      "My passion lies in bridging computing with artistic expression, driving my ambition to become a Technical Artist. Beyond my professional pursuits, I enjoy gaming, exploring new destinations, and reading novels.\n\n"
      "Having previously resided in Shanghai and Beijing, I am now based in Shenzhen. Beijing remains my favorite Chinese metropolis—a city where I met my partner and formed lasting memories. If you're planning a trip to Beijing, feel free to reach out for personalized recommendations.";

  final String experience =
      " · 2025.02 ~ Present: Software Engineer, BYD Company Ltd. \n"
      " · 2022.07 ~ 2024.07: Software Engineer, Huawei Technologies Co., Ltd. \n"
      " · 2021.06 ~ 2021.08: Gameplay Engineer Intern, Tencent Technology Co., Ltd.";

  final String projectString =
      " · This Web: https://github.com/ReleaseWang/myWeb";

  Text createTextContent(String data, double scale) {
    return Text(
      data,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18 * scale,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  Widget createFriendContent(double scale) {
    List<Widget> friends = [
      FriendsLink(
        imagePath: 'assets/images/yanxingwang.jpg',
        urlString: "https://cv.ywang.site/experiences/",
        scale: scale,
      ),
      FriendsLink(
        imagePath: 'assets/images/yueyuhu.jpg',
        urlString: "https://huzi96.github.io/",
        scale: scale,
      ),
      FriendsLink(
        imagePath: 'assets/images/jingmengcui.jpg',
        urlString: "https://jingmeng-cui.netlify.app/",
        scale: scale,
      ),
      FriendsLink(
        imagePath: 'assets/images/haji.jpg',
        urlString:
            "https://scholar.google.com/citations?hl=zh-CN&user=gySXTFMAAAAJ&view_op=list_works",
        scale: scale,
      ),
      FriendsLink(
        imagePath: 'assets/images/wangyixuan.jpg',
        urlString: "https://am.yixuan-wang.site/",
        scale: scale,
      ),
    ];

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        int numOfRow = (constraints.maxWidth / (150 * scale)).floor();
        double padding = (constraints.maxWidth - numOfRow * (150 * scale)) / 2;
        int columnsNeed = (friends.length / numOfRow).floor() + 1;
        int restSize = friends.length % numOfRow;
        List<Widget> friendContent = [];
        for (int i = 0; i < columnsNeed; i++) {
          List<Widget> friendsOfThisLine = [];
          for (int j = 0; j < numOfRow; j++) {
            int index = i * numOfRow + j;
            if (index >= friends.length) break;
            friendsOfThisLine.add(friends[index]);
          }
          var axisAlignment = MainAxisAlignment.center;
          if (i == columnsNeed - 1 && restSize != numOfRow - 1) {
            axisAlignment = MainAxisAlignment.start;
          }
          friendContent.add(
            Row(mainAxisAlignment: axisAlignment, children: friendsOfThisLine),
          );
        }

        return Padding(
          padding: EdgeInsets.fromLTRB(padding, 0, padding, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: friendContent,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    // 1707,876?   假设安卓是420，920
    Size screenSize = mediaQuery.size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;

    double factorW = lerpDouble(
      0.65,
      1,
      ((screenWidth - 400) / (1707 - 400)).clamp(0.0, 1.0),
    )!;
    double factorH = lerpDouble(
      0.8,
      1,
      ((screenHeight - 400) / (880 - 400)).clamp(0.0, 1.0),
    )!;

    double factorAvg = (factorH + factorW) / 2;

    Widget aboutMeContent = createTextContent(aboutme, factorAvg);
    Widget experienceContent = createTextContent(experience, factorAvg);
    Widget projectContent = createTextContent(projectString, factorAvg);
    Widget friendsContent = createFriendContent(min(factorH, factorW));
    double sizedBoxHeight = 40 * factorAvg;

    double flexiblePaddingSize = screenWidth * 0.023;
    double marginWidth = screenWidth * 0.1;

    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          // 1707, 876
          // print("Size: $constraints");
          List<Widget> rightList = [];
          // arrange the content based on differen window size
          List<Widget> leftList = [
            ContentBox(
              title: "About me",
              contentWidget: aboutMeContent,
              scale: factorAvg,
            ),
            SizedBox(height: sizedBoxHeight),
            ContentBox(
              title: "Experience",
              contentWidget: experienceContent,
              scale: factorAvg,
            ),
            SizedBox(height: sizedBoxHeight),
            // Project
            ContentBox(
              title: "Project",
              contentWidget: projectContent,
              scale: factorAvg,
            ),
            SizedBox(height: sizedBoxHeight),
            ContentBox(
              title: "Friends",
              contentWidget: friendsContent,
              scale: factorAvg,
            ),
          ];
          Widget myInfo = MySelfCard(
            englishName: 'Zichun Wang',
            chineseName: '汪子淳',
            mail: 'wangzichunww AT gmail',
            address: 'Shenzhen, China',
            picPath: 'assets/images/zichunwang.jpg',
            scale: factorAvg,
          );
          Widget webInfo = WebNewsCard(scale: factorAvg);

          Widget contentList;
          if (constraints.maxWidth < 820) {
            marginWidth = marginWidth * 0.7;
            leftList.insert(0, SizedBox(height: sizedBoxHeight));
            leftList.insert(0, myInfo);
            leftList.add(SizedBox(height: sizedBoxHeight));
            leftList.add(webInfo);
            contentList = Padding(
              padding: EdgeInsets.fromLTRB(
                flexiblePaddingSize,
                flexiblePaddingSize,
                flexiblePaddingSize,
                flexiblePaddingSize,
              ),
              child: Column(children: leftList),
            );
          } else {
            if (constraints.maxWidth < 1500) {
              marginWidth = marginWidth * 0.7;
            }
            rightList.add(myInfo);
            rightList.add(SizedBox(height: sizedBoxHeight * 2));
            rightList.add(webInfo);
            contentList = Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 14,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                      flexiblePaddingSize * 0.5,
                      flexiblePaddingSize,
                      flexiblePaddingSize * 1.5,
                      flexiblePaddingSize,
                    ),
                    child: Column(children: leftList),
                  ),
                ),
                Flexible(
                  flex: 6,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                      flexiblePaddingSize * 1.5,
                      flexiblePaddingSize,
                      flexiblePaddingSize * 0.5,
                      flexiblePaddingSize,
                    ),
                    child: Column(children: rightList),
                  ),
                ),
              ],
            );
          }

          return Stack(
            children: [
              Image.asset(
                'assets/images/blog_background.jpg',
                width: constraints.maxWidth,
                height: constraints.maxHeight,
                fit: BoxFit.cover,
              ),

              ListView(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(
                      marginWidth,
                      0,
                      marginWidth,
                      0,
                    ),
                    child: contentList,
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
