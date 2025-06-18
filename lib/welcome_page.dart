import 'package:flutter/material.dart';
import 'package:my_web_page/blog_page.dart';
import 'package:my_web_page/homepage.dart';
import 'package:my_web_page/widgets/bg_selector.dart';
import 'package:my_web_page/widgets/button_in_welcom.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int index = 0;
  final List<String> imagePathList = [
    'assets/images/web_bg1.jpg',
    'assets/images/web_bg2.jpg',
    'assets/images/web_bg3.jpg',
    'assets/images/web_bg4.jpg',
  ];
  final List<String> imageInfoList = [
    "Photoed by Yueyu Hu.",
    "Photoed by Datong Wei.",
    "Photoed by Yueyu Hu.",
    "Photoed by Yueyu Hu.",
  ];

  final String name = "Zichun Wang - 汪子淳";
  final String sentence1 = "莫向外求";
  final String sentence2 = "今天也为这美好的世界干杯";

  @override
  Widget build(BuildContext context) {
    List<Widget> bgButtons = [];
    for (int i=0; i<3; i++)
    { 
      double rightSpace = i==2?15:5;
      bgButtons.add(
        BgSelector(
            leftMargin: 5, 
            rightMargin: rightSpace, 
            index: i+1, 
            func: () => setState(() {
              index = i;
            })      
      ));
    }
    return Scaffold(
      body: Center(
        child:Stack(
        children: [
          Image.asset(
            imagePathList[index],
            width: double.infinity,
            height:double.infinity,
            fit: BoxFit.fill,
            gaplessPlayback:true
          ),  
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              Text(sentence1,
                style: TextStyle(
                  color: Color.fromARGB(255, 230, 230, 230),
                  fontSize: 27,
                ),
              ),
              SizedBox(height: 20,),
              CustomPaint(
                size: const Size(300, 20), // 画布大小（宽度需≥200）
                painter: LinePainter(),     // 自定义画笔
              ),
              SizedBox(height: 20,),
              Text(sentence2,
                style: TextStyle(
                  color: Color.fromARGB(255, 240, 240, 240),
                  fontSize: 23,
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonInWelcom(buttonString: '博 客', routeWidget: BlogPage(), buttonWidth: 40,),
                  SizedBox(width: 20,),
                  ButtonInWelcom(buttonString: 'Github', routeWidget: BlogPage(), buttonWidth: 50,),
                  SizedBox(width: 20,),
                  ButtonInWelcom(buttonString: '联络我', routeWidget: BlogPage(), buttonWidth: 50,),
                ],
              )
            ]
          ),
        Align(
          alignment: Alignment.bottomRight,
          child: 
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
                  child: Text(imageInfoList[index], 
                      style: TextStyle(
                      color: const Color.fromARGB(255, 205, 205, 205), 
                      fontSize: 12
                    ),),
                ),
          ),

        Align(
          alignment: Alignment.topRight,
          child: Opacity(
              opacity: 0.5,
              child: Row(
                mainAxisSize:MainAxisSize.min,
                children: bgButtons),
            ),
          ),
        ]),
      ),
    );
  }
}




class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)         // 线条颜色
      ..strokeWidth = 2.0            // 线条粗细
      ..strokeCap = StrokeCap.round // 端点样式（圆角）
      ..style = PaintingStyle.stroke;

    // 计算起点和终点（水平居中，长度200）
    final startX = (size.width - 200) / 2; // 水平居中
    final startY = size.height / 2;
    final endX = startX + 200;             // 终点 = 起点 + 200
    final endY = startY;

    // 绘制直线
    canvas.drawLine(
      Offset(startX, startY),
      Offset(endX, endY),
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false; // 无需重绘
}