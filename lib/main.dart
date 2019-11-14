import 'package:flutter/material.dart';
import 'widgets/travel_card.dart';
import 'constans.dart';
import 'widgets/page_indicator.dart';

void main() => runApp(TravelApp());

class TravelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      theme: ThemeData(
        primaryColor: Colors.white,
        canvasColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
        ),
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentPlacePosition = 1;

  final controller = PageController(initialPage: 1, viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Discover'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: PageView.builder(
              controller: controller,
              itemCount: placeList.length,
              onPageChanged: (newPosition) {
                setState(() {
                  _currentPlacePosition = newPosition;
                });
              },
              itemBuilder: (context, index) => TravelCard(placeList[index]),
            ),
          ),
          Expanded(
            child: PageIndicator(placeList.length, _currentPlacePosition),
          )
        ],
      ),
    );
  }
}
