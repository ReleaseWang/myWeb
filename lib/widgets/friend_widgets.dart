import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void openExternalUrl(String url) {
  launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
  return;
}

class FriendsLink extends StatelessWidget {
  final String imagePath;
  final String urlString;
  final double scale;
  const FriendsLink({
    super.key,
    required this.imagePath,
    required this.urlString,
    required this.scale,
  });

  @override
  Widget build(BuildContext context) {
    double paddingSize = 15 * scale;
    double radiusSize = 120 * scale;
    return Padding(
      padding: EdgeInsets.all(paddingSize),
      child: GestureDetector(
        child: Container(
          width: radiusSize,
          height: radiusSize,
          decoration: BoxDecoration(
            border: BoxBorder.all(
              color: const Color.fromARGB(255, 240, 240, 240),
              width: 4 * scale,
            ),
            shape: BoxShape.circle,
          ),
          child: ClipOval(child: Image.asset(imagePath, fit: BoxFit.cover)),
        ),
        onTap: () {
          openExternalUrl(urlString);
        },
      ),
    );
  }
}
