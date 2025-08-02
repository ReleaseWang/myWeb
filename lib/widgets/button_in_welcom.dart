import 'package:flutter/material.dart';

class ButtonInWelcom extends StatelessWidget {
  final String buttonString;
  final VoidCallback func;
  final double buttonWidth;
  final double factorW;
  final double factorH;

  const ButtonInWelcom({
    super.key,
    required this.buttonString,
    required this.func,
    required this.buttonWidth,
    required this.factorW,
    required this.factorH,
  });

  @override
  Widget build(BuildContext context) {
    double buttonHeight = 40;
    double factorAvg = (factorH + factorW) / 2;
    return ElevatedButton(
      onPressed: func,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(0, 0, 0, 0), // 背景色
        foregroundColor: const Color.fromARGB(255, 240, 240, 240), // 文字/图标颜色
        shape: RoundedRectangleBorder(
          // 圆角
          borderRadius: BorderRadius.circular(18 * factorAvg),
        ),
        elevation: 5, // 阴影高度
        side: BorderSide(
          color: const Color.fromARGB(255, 215, 215, 215),
          width: 2 * factorAvg,
        ), // 边框
      ),
      child: SizedBox(
        width: buttonWidth * factorAvg,
        height: buttonHeight * factorAvg,
        child: Center(
          child: Text(buttonString, style: TextStyle(fontSize: 16 * factorAvg)),
        ),
      ),
    );
  }
}
