import 'package:flutter/material.dart';
import 'package:upgrade_lannding/screens/homepage/mobile.dart';
import 'package:upgrade_lannding/screens/homepage/website.dart';

void main() {
  runApp(const UpgradeWebsite());
}

class UpgradeWebsite extends StatelessWidget {
  const UpgradeWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    if (width < 770) {
      return const MobileHomePage();
    } else {
      return const WebHomePage();
    }
  }
}
