import 'package:flutter/material.dart';
import 'package:insta_clone/home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(
        iconTheme: IconThemeData(color: Color.fromRGBO(40, 40, 40, 1)),
        appBarTheme: AppBarTheme(
          elevation: 1,
          color: Colors.white, 
          iconTheme: IconThemeData(color: Color.fromRGBO(40, 40, 40, 1)),
        ),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.home, 
                color: currentPage == 0 
                ? Color.fromRGBO(203, 73, 101, 1) 
                : Color.fromRGBO(40, 40, 40, 1),
              ),
              onPressed: () {
                setState(() {
                  currentPage = 0;
                });
              },
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.search,
                color: currentPage == 1 
                ? Color.fromRGBO(203, 73, 101, 1) 
                : Color.fromRGBO(40, 40, 40, 1),
              ),
              onPressed: () {
                setState(() {
                  currentPage = 1;
                });
              },
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.add_box_outlined,
                color: currentPage == 2 
                ? Color.fromRGBO(203, 73, 101, 1) 
                : Color.fromRGBO(40, 40, 40, 1),
              ),
              onPressed: () {
                setState(() {
                  currentPage = 2;
                });
              },
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.live_tv_rounded,
                color: currentPage == 3 
                ? Color.fromRGBO(203, 73, 101, 1) 
                : Color.fromRGBO(40, 40, 40, 1),
              ),
              onPressed: () {
                setState(() {
                  currentPage = 3;
                });
              },
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.person,
                color: currentPage == 4 
                ? Color.fromRGBO(203, 73, 101, 1) 
                : Color.fromRGBO(40, 40, 40, 1),
              ),
              onPressed: () {
                setState(() {
                  currentPage = 4;
                });
              },
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
