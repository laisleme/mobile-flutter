import 'package:flutter/material.dart';
import 'package:flutter_application_/screen/widgets/tabs.page.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: TabsPage(),
      ),
    );
  }
}
