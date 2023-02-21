import 'package:flutter/material.dart';

class PlaceholderPage extends StatelessWidget {
  ///Placeholder Page to show users if you have not developed a screen
  const PlaceholderPage({Key? key, this.placeholder}) : super(key: key);

  ///Widget to show your users if you did not develop some screen,
  ///if null it shows the flutter logo
  final Widget? placeholder;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: placeholder ??
          const Center(
              child: FlutterLogo(
            size: 64,
          )),
    );
  }
}
