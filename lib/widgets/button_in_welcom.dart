import 'package:flutter/material.dart';


class ButtonInWelcom extends StatelessWidget
{
  final String buttonString;
  final Widget routeWidget;
  final double buttonWidth;

  const ButtonInWelcom({super.key, required this.buttonString, required this.routeWidget, required this.buttonWidth, });
  

 @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
              onPressed: () => {Navigator.push( 
                context,
                MaterialPageRoute(builder: (context) {
                  return routeWidget;
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
                width: buttonWidth,
                height: 40,
                child: Center(child: 
                  Text(buttonString, 
                    style:TextStyle(
                      fontSize: 16
                    ))
                  )
                ),
            );
  }
}