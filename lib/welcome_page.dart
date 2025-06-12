import 'package:flutter/material.dart';

import 'blog_page.dart';



class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key, required this.title});

  final String title;

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Stack(
        
        children: [
        
        Container(
          width: 1800,
          height:1800,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Image/web_background1.jpg'),
              fit: BoxFit.fill
            )
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Zichun Wang - 汪子淳",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w300
                ),
              ),
              Text("莫向外求",
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
              Text("今天也为这美好的世界干杯",
                style: TextStyle(
                  color: Color.fromARGB(255, 240, 240, 240),
                  fontSize: 23,
                  fontWeight: FontWeight.w100
                ),
              ),
              SizedBox(height: 20,),
              Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => {Navigator.push( 
                      context,
                      MaterialPageRoute(builder: (context) {
                        return BlogPage();
                      }),
                    )},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(0, 0, 0, 0),          // 背景色
                      foregroundColor: const Color.fromARGB(255, 240, 240, 240),         // 文字/图标颜色
                      shape: RoundedRectangleBorder(        // 圆角
                        borderRadius: BorderRadius.circular(18),
                      ),
                      elevation: 5,                         // 阴影高度
                      side: BorderSide(color: const Color.fromARGB(255, 215, 215, 215), width: 2), // 边框
                    ),
                    
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: Center(child: 
                        const Text('博 客', style:TextStyle(
                          fontSize: 16
                        ))
                        )
                      ),
                  ),
                  SizedBox(width: 20,),
                  ElevatedButton(
                    onPressed: () => print('按钮2被点击'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(0, 0, 0, 0),          // 背景色
                      foregroundColor: const Color.fromARGB(255, 240, 240, 240),         // 文字/图标颜色
                      shape: RoundedRectangleBorder(        // 圆角
                        borderRadius: BorderRadius.circular(18),
                      ),
                      elevation: 5,                         // 阴影高度
                      side: BorderSide(color: const Color.fromARGB(255, 215, 215, 215), width: 2), // 边框
                    ),
                    
                    child: SizedBox(
                      width: 50,
                      height: 40,
                      child: Center(child: 
                        const Text('Github', style:TextStyle(
                          fontSize: 16
                        ))
                        )
                      ),
                  ),
                  SizedBox(width: 20,),
                  ElevatedButton(
                    onPressed: () => print('按钮3被点击'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(0, 0, 0, 0),          // 背景色
                      foregroundColor: const Color.fromARGB(255, 240, 240, 240),         // 文字/图标颜色
                      shape: RoundedRectangleBorder(        // 圆角
                        borderRadius: BorderRadius.circular(18),
                      ),
                      elevation: 5,                         // 阴影高度
                      side: BorderSide(color: const Color.fromARGB(255, 215, 215, 215), width: 2), // 边框
                    ),
                    child: SizedBox(
                      width: 50,
                      height: 40,
                      child: Center(child: 
                        const Text('联络我', style:TextStyle(
                          fontSize: 16
                        ))
                        )
                      ),
                  )
                ],
              )

            ]
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: 
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 7),
                  child: Text("Photoed by Yueyu Hu.", style: TextStyle(color: const Color.fromARGB(255, 205, 205, 205), fontSize: 12),
                  
                              ),
                ),
          ),
        
        ]
      ),
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