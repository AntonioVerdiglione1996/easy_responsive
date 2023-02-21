### 👋 Ciao!<br> 
# Welcome to Easy Responsive! 
Super-Simple utility to adapt your UI to any environment! 

## Import:
```dart
import 'package:easy_responsive/easy_responsive.dart';
```

## Code:
```dart
class MyPage extends StatelessWidget {
  ///Placeholder Page to show users if you have not developed a screen
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobileView: SizedBox(), //your mobile view
        tabletView: SizedBox(), //your tablet view
        desktopView: SizedBox(), //your desktop view
      ),
    );
  }
}
```
