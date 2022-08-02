import 'package:flutter/material.dart';
import 'package:queritel_practical/screens/cats.dart';
import 'package:queritel_practical/screens/dog.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.grey,
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
            body: const TabBarView(
              children: [
                CatsPage(),
                DogsPage(),
              ],
            ),
          ),
    );
  }
}
