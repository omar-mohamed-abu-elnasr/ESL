import 'package:final_project/drawer/my_drawer.dart';
import 'package:flutter/material.dart';
import '../tabs/dictionary.dart';
import '../tabs/homeLayout.dart';

class home extends StatefulWidget {
  static const String routeName = "home";

  home({super.key});

  @override
  State<home> createState() => _HomeLayoutViewState();
}

class _HomeLayoutViewState extends State<home> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          drawer: MyDrawer(),
          appBar: AppBar(
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  padding: EdgeInsets.only(left: 40),
                  icon: const Icon(
                    Icons.menu,
                    color: Color(0xFF370B54),
                    size: 35, // Changing Drawer Icon Size
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
            automaticallyImplyLeading: true,
            flexibleSpace: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xFF8D36C6), Color(0xFF419AF5)]))),
            title: const TabBar(
              padding: EdgeInsets.only(left: 70),
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Color(0xFF370B54),
              tabs: [
                Tab(icon: ImageIcon(AssetImage("assets/images/home_icon.png"),size: 40,)),
                Tab(icon: ImageIcon(AssetImage("assets/images/page_icon.png"),size: 40,)),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              HomeLayOut(),
              Dictionary(),
            ],
          ),
        ));
  }
}
