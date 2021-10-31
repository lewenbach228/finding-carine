import 'package:finding_carine/data.dart';
import 'package:finding_carine/flipcardgame.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Title'),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: _list.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => _list[index].goto),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Stack(
                    children: [
                      Container(
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: _list[index].primarycolor,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 4,
                                  color: Colors.black45,
                                  spreadRadius: 0.5,
                                  offset: Offset(3, 4))
                            ]),
                      ),
                      Container(
                        height: 90,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: _list[index].secondColor,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 4,
                                  color: Colors.black12,
                                  spreadRadius: 0.3,
                                  offset: Offset(
                                    5,
                                    3,
                                  ))
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                                child: Text(
                              _list[index].name,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black26,
                                      blurRadius: 2,
                                      offset: Offset(1, 2),
                                    ),
                                    Shadow(
                                        color: Colors.blue,
                                        blurRadius: 2,
                                        offset: Offset(0.5, 2))
                                  ]),
                            )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: generateStar(_list[index].noOfstar),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  List<Widget> generateStar(int no) {
    List<Widget> _icons = [];
    for (int i = 0; i < no; i++) {
      _icons.insert(
        i,
        const Icon(
          Icons.star,
          color: Colors.yellow,
        ),
      );
    }
    return _icons;
  }
}

class Details {
  String name = 'FAIBLE';
  Color primarycolor;
  Color secondColor;
  Widget goto;
  int noOfstar = 1;

  Details({
    required this.name,
    required this.primarycolor,
    required this.secondColor,
    required this.noOfstar,
    required this.goto,
  });
}

List<Details> _list = [
  Details(
    name: 'FAIBLE',
    primarycolor: Colors.green,
    secondColor: Colors.greenAccent,
    noOfstar: 1,
    goto: FlipCardGame(Level.FACILE),
  ),
  Details(
    name: 'MOYENNE',
    primarycolor: Colors.blue,
    secondColor: Colors.lightBlueAccent,
    noOfstar: 2,
    goto: FlipCardGame(Level.MOYENNE),
  ),
  Details(
    name: 'DIFFICILE',
    primarycolor: Colors.red,
    secondColor: Colors.redAccent,
    noOfstar: 3,
    goto: FlipCardGame(Level.DIFFICILE),
  ),
];
