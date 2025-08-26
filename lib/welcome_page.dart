import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_web_page/blog_page.dart';
import 'package:my_web_page/widgets/beian.dart';
import 'package:my_web_page/widgets/bg_selector.dart';
import 'package:my_web_page/widgets/button_in_welcom.dart';
import 'widgets/friend_widgets.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int index = 0;
  final List<String> imagePathList = [
    'assets/images/bg/web_bg_1.jpg',
    'assets/images/bg/web_bg_2.jpg',
    'assets/images/bg/web_bg_3.jpg',
  ];
  final List<String> imageInfoList = [
    "Photo by Yueyu Hu.",
    "Photo by Datong Wei.",
    "Photo by Yueyu Hu.",
  ];

  final String name = "Zichun Wang - 汪子淳";
  final String sentence1 = "莫向外求";
  final String sentence2 = "今天也为这美好的世界干杯";

  void blogFuc() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return BlogPage();
        },
      ),
    );
  }

  void githubFuc() {
    openExternalUrl("https://github.com/ReleaseWang");
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    // 1707,932   假设安卓是420，920
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
      ((screenHeight - 400) / (900 - 400)).clamp(0.0, 1.0),
    )!;

    double factorAvg = (factorH + factorW) / 2;

    List<Widget> bgButtons = [];
    for (int i = 0; i < 3; i++) {
      double rightSpace = i == 2 ? 15 : 5;
      bgButtons.add(
        BgSelector(
          leftMargin: 5 * factorAvg,
          rightMargin: rightSpace * factorAvg,
          index: i + 1,
          func: () => setState(() {
            index = i;
          }),
          isSelected: index == i,
          factor: factorAvg,
        ),
      );
    }
    String imagePath = imagePathList[index];

    return Scaffold(
      body: Container(
        constraints: BoxConstraints(minWidth: 400, minHeight: 400),
        child: Center(
          child: Stack(
            children: [
              Image.asset(
                imagePath,
                width: screenWidth,
                height: screenHeight,
                fit: BoxFit.cover,
                gaplessPlayback: true,
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40 * factorAvg,
                    ),
                  ),
                  Text(
                    sentence1,
                    style: TextStyle(
                      color: Color.fromARGB(255, 230, 230, 230),
                      fontSize: 27 * factorAvg,
                    ),
                  ),
                  SizedBox(height: 20 * factorAvg),
                  CustomPaint(
                    size: Size(
                      300 * factorAvg,
                      20 * factorAvg,
                    ), // 画布大小（宽度需≥200）
                    painter: LinePainter(), // 自定义画笔
                  ),
                  SizedBox(height: 20 * factorAvg),
                  Text(
                    sentence2,
                    style: TextStyle(
                      color: Color.fromARGB(255, 240, 240, 240),
                      fontSize: 23 * factorAvg,
                    ),
                  ),
                  SizedBox(height: 20 * factorAvg),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonInWelcom(
                        buttonString: '博 客',
                        func: blogFuc,
                        buttonWidth: 40,
                        factorW: factorW,
                        factorH: factorH,
                      ),
                      SizedBox(width: 20 * factorAvg),
                      ButtonInWelcom(
                        buttonString: 'Github',
                        func: githubFuc,
                        buttonWidth: 50,
                        factorW: factorW,
                        factorH: factorH,
                      ),
                      SizedBox(width: 20 * factorAvg),
                      ButtonInWelcom(
                        buttonString: 'Null',
                        func: () {},
                        buttonWidth: 40,
                        factorW: factorW,
                        factorH: factorH,
                      ),
                    ],
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                    0,
                    0,
                    10 * factorAvg,
                    10 * factorAvg,
                  ),
                  child: Text(
                    imageInfoList[index],
                    style: TextStyle(
                      color: const Color.fromARGB(255, 205, 205, 205),
                      fontSize: 12 * factorAvg,
                    ),
                  ),
                ),
              ),

              Align(
                alignment: Alignment.topRight,
                child: Opacity(
                  opacity: 0.5,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: bgButtons,
                  ),
                ),
              ),
              BeianW(scale: factorAvg),
            ],
          ),
        ),
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color =
          const Color.fromARGB(255, 255, 255, 255) // 线条颜色
      ..strokeWidth =
          2.0 // 线条粗细
      ..strokeCap = StrokeCap
          .round // 端点样式（圆角）
      ..style = PaintingStyle.stroke;

    // 计算起点和终点（水平居中，长度200）
    final startX = (size.width - 200) / 2; // 水平居中
    final startY = size.height / 2;
    final endX = startX + 200; // 终点 = 起点 + 200
    final endY = startY;

    // 绘制直线
    canvas.drawLine(Offset(startX, startY), Offset(endX, endY), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false; // 无需重绘
}
