import 'package:flutter/material.dart';
import 'package:flutter_17_fire/widgets/all_news.dart';
import 'package:flutter_17_fire/widgets/favourit_news.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
        length: 2,
        child: Scaffold(
          body: TabBarView(
            children: [AllNews(), FaveNews()],
          ),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(
                child: Text(
                  "All news",
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              Tab(
                child: Text(
                  "Fave news",
                  style: TextStyle(color: Colors.black54),
                ),
              )
            ],
          ),
        ));
  }
}
