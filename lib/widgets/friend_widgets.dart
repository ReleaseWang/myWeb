import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void openExternalUrl(String url)  {
    launchUrl(Uri.parse(url),
        mode: LaunchMode.externalApplication,);
    return;
}


class FriendsLink extends StatelessWidget
{
  final String imagePath;
  final String urlString;
  const FriendsLink({super.key, required this.imagePath, required this.urlString});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.all(20),
            child: GestureDetector(
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  border:BoxBorder.all(
                    color: const Color.fromARGB(255, 240, 240, 240),
                    width: 4
                  ),
                  shape: BoxShape.circle,
                ),
                child: ClipOval(child: Image.asset(imagePath,
                fit: BoxFit.cover,)),
              ),
              onTap: () {
                openExternalUrl(urlString);
              },
            ),
    );
  }
  
}