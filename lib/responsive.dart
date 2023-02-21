import 'package:easy_responsive/placeholder_page.dart';
import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  ///Screen to show in mobile environment
  final Widget? mobileView;

  ///Screen to show in tablet environment
  final Widget? tabletView;

  ///Screen to show in desktop environment
  final Widget? desktopView;

  ///Screen to show if one or more of the variables are null
  final Widget? placeholderView;

  ///if screen width is less than 600 px, is a mobile screen,
  ///if screen width is more than 600 px and less than 1000px, is a tablet screen,
  ///if screen width is more than 1000 px, is a desktop screen
  const Responsive(
      {Key? key,
      this.mobileView,
      this.tabletView,
      this.desktopView,
      this.placeholderView})
      : super(key: key);

  ///Ask Responsive if you are in mobile environment
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  ///Ask Responsive if you are in tablet environment
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1000 &&
      MediaQuery.of(context).size.width >= 600;

  ///Ask Responsive if you are in desktop environment
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1000;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1000) {
          return desktopView ??
              PlaceholderPage(
                placeholder: placeholderView,
              );
        } else if (constraints.maxWidth >= 600) {
          return tabletView ??
              PlaceholderPage(
                placeholder: placeholderView,
              );
        } else {
          return mobileView ??
              PlaceholderPage(
                placeholder: placeholderView,
              );
        }
      },
    );
  }
}
