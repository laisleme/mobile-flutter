import 'package:flutter/material.dart';

import '../pages/consult.page.dart';
import '../pages/register.page.dart';


class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFF),
      body: TabBarView(
        children: [
          ConsultPage(),
          RegisterPage(),
        ],
      ),
      bottomNavigationBar: new TabBar(
        tabs: [
          Tab(
            icon: new Icon(Icons.dashboard_outlined),
          ),
          Tab(
            icon: new Icon(Icons.create),
          ),
        ],
        labelColor: Theme.of(context).primaryColor,
        unselectedLabelColor: Colors.black38,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
