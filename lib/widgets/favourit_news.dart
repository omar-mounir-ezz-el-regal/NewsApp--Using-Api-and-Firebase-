import 'package:flutter/material.dart';

class FaveNews extends StatefulWidget {
  const FaveNews({Key? key}) : super(key: key);

  @override
  _FaveNewsState createState() => _FaveNewsState();
}

class _FaveNewsState extends State<FaveNews> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Fave News"),
    );
  }
}
