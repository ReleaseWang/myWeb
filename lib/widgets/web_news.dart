import 'package:flutter/material.dart';

class WebNewsCard extends StatelessWidget {
  final double scale;
  const WebNewsCard({super.key, required this.scale});

  @override
  Widget build(BuildContext context) {
    double leftPadding = 15 * scale;
    double topPadding1 = 10 * scale;
    double topPadding2 = 20 * scale;
    double bottomPadding = 30 * scale;
    double borderWidth = 4 * scale;
    double radiusSize = 10 * scale;

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color.fromARGB(240, 157, 188, 205),
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
          padding: EdgeInsets.fromLTRB(
            leftPadding,
            topPadding1,
            leftPadding,
            topPadding1,
          ),
          child: Text(
            "网站资讯",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color.fromARGB(165, 226, 226, 226),
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
          height: 250 * scale,
          padding: EdgeInsets.fromLTRB(
            leftPadding,
            topPadding2,
            leftPadding,
            bottomPadding,
          ),
          child: null,
        ),
      ],
    );
  }
}
