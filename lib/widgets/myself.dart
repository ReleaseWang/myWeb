import 'package:flutter/material.dart';

class MySelfCard extends StatelessWidget {
  final String englishName;
  final String chineseName;
  final String mail;
  final String address;
  final String picPath;
  final double scale;

  const MySelfCard({
    super.key,
    required this.englishName,
    required this.chineseName,
    required this.mail,
    required this.address,
    required this.picPath,
    required this.scale,
  });

  @override
  Widget build(BuildContext context) {
    double sizedBoxHeight = 10 * scale;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 70 * scale),
        Container(
          width: 180 * scale,
          height: 180 * scale,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: BoxBorder.all(color: Colors.white, width: 5 * scale),
          ),
          child: ClipOval(child: Image.asset(picPath, fit: BoxFit.cover)),
        ),
        SizedBox(height: sizedBoxHeight),
        Text(englishName, style: TextStyle(fontSize: 18 * scale)),
        SizedBox(height: 5 * scale),
        Text(chineseName, style: TextStyle(fontSize: 18 * scale)),
        SizedBox(height: sizedBoxHeight),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.mail),
            SizedBox(width: sizedBoxHeight),
            Text(mail, style: TextStyle(fontSize: 14 * scale)),
          ],
        ),
        SizedBox(height: 5 * scale),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_city),
            SizedBox(width: sizedBoxHeight),
            Text(address, style: TextStyle(fontSize: 14 * scale)),
          ],
        ),
      ],
    );
  }
}
