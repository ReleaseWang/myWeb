import 'package:flutter/material.dart';

class ContentBox extends StatelessWidget {
  final String title;
  final Widget contentWidget;
  final double scale;

  const ContentBox({
    super.key,
    required this.title,
    required this.contentWidget,
    required this.scale,
  });

  @override
  Widget build(BuildContext context) {
    double leftPadding = 15 * scale;
    double topPadding1 = 10 * scale;
    double topPadding2 = 20 * scale;
    double bottomPadding = 30 * scale;
    double borderWidth = 4 * scale;
    double radiusSize = 10 * scale;
    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(
                leftPadding,
                topPadding1,
                leftPadding,
                topPadding1,
              ),
              decoration: BoxDecoration(
                color: const Color.fromARGB(128, 52, 155, 240),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(radiusSize),
                  topRight: Radius.circular(radiusSize),
                ),
                border: BoxBorder.fromLTRB(
                  top: BorderSide(color: Colors.white, width: borderWidth),
                  left: BorderSide(color: Colors.white, width: borderWidth),
                  right: BorderSide(color: Colors.white, width: borderWidth),
                ),
              ),
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(
                leftPadding,
                topPadding2,
                leftPadding,
                bottomPadding,
              ),
              decoration: BoxDecoration(
                color: const Color.fromARGB(240, 138, 202, 255),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(radiusSize),
                  bottomRight: Radius.circular(radiusSize),
                ),
                border: BoxBorder.fromLTRB(
                  bottom: BorderSide(color: Colors.white, width: borderWidth),
                  left: BorderSide(color: Colors.white, width: borderWidth),
                  right: BorderSide(color: Colors.white, width: borderWidth),
                ),
              ),
              child: contentWidget,
            ),
          ],
        ),
      ],
    );
  }
}
