import 'package:flutter/material.dart';
import 'package:queritel_practical/screens/cats.dart';
import 'package:queritel_practical/screens/dog.dart';
import 'package:queritel_practical/variables.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: width > webScreenSize ? AppBar(
              backgroundColor: Colors.grey,
              leading: Image.network("https://media.istockphoto.com/photos/dog-and-cat-together-picture-id1304796251?b=1&k=20&m=1304796251&s=170667a&w=0&h=QhQ_YGtLE1h88yPjDK1JoxelTlrIKNEicr3OSSYZVzU="),
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
            ): AppBar(
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
            body: const Padding(
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
