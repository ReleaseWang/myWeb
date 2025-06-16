import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void openExternalUrl(String url)  {
  // 检查 URL 是否有效
  // if ( canLaunchUrl(Uri.parse(url))) {
  //   // 打开 URL（默认使用系统浏览器）
    launchUrl(Uri.parse(url),
        mode: LaunchMode.externalApplication,);
    return;
  // }
}


class FriendsBox extends StatelessWidget
{
  
  final String title = "Friends";
  const FriendsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.85,
          child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              alignment:Alignment.centerLeft,
              child: Text(title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),)
            ),
            Container(
              height: 200,
              padding: EdgeInsets.fromLTRB(15, 20, 15, 30),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 97, 182, 252),
              ),
              child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(child: Image.asset('assets/images/yanxingwang.jpg',
                      fit: BoxFit.cover,)),
                    ),
                    onTap: () {
                      openExternalUrl("https://cv.ywang.site/experiences/");
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(child: Image.asset('assets/images/yueyuhu.jpg',
                      fit: BoxFit.cover,)),
                    ),
                    onTap: () {
                      openExternalUrl("https://huzi96.github.io/");
                    },
                  )
                ],
              ),
            )
          ],
                ),
        ),]
    );
    
  }
  
}