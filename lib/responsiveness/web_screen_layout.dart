
import 'package:flutter/material.dart';
import 'package:queritel_practical/screens/cats.dart';
import 'package:queritel_practical/screens/dog.dart';

class webScreenLayout extends StatefulWidget {
  const webScreenLayout({Key? key}) : super(key: key);

  @override
  _webScreenLayoutState createState() => _webScreenLayoutState();
}

class _webScreenLayoutState extends State<webScreenLayout> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          leading: Image.network("https://pngtree.com/free-png-vectors/pet"),
          bottom: const TabBar(
            unselectedLabelStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
            ),
            labelStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
            ),
            tabs: [
              Tab(
                text: "Cats",
              ),
              Tab(
                text: "Dogs",
              ),
            ],
          ),
        ),
        body: Padding(
          padding:  EdgeInsets.only(top: 40),
          child: TabBarView(
            children: [
              CatsPage(),
              DogsPage(),
            ],
          ),
        ),
      ),
    );
  }
}