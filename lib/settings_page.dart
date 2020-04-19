import 'package:flutter/material.dart';
import 'ReusableCard.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return CustomScrollView(
//      slivers: <Widget>[
//        const SliverAppBar(
//          pinned: true,
//          expandedHeight: 250.0,
//          flexibleSpace: FlexibleSpaceBar(
//            title: Text('Settings'),
//          ),
//        ),
//        SliverGrid(
//          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//            maxCrossAxisExtent: 200.0,
//            mainAxisSpacing: 10.0,
//            crossAxisSpacing: 10.0,
//            childAspectRatio: 4.0,
//          ),
//          delegate: SliverChildBuilderDelegate(
//            (BuildContext context, int index) {
//              return ReusableCard(
//                text: 'Change Player\'s names',
//              );
//            },
//            childCount: 1,
//          ),
//        ),
//      ],
//    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Column(
        children: <Widget>[
          ReusableCard(
            text: 'Change Player\'s names',
          ),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFF1D1E33),
            ),
            child: Center(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Player 1'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Player 2'),
                  ),
                ],
              ),
            ),
          ),
          ReusableCard(
            text: 'Enter Number of Sets',
          ),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFF1D1E33),
            ),
            child: Center(
              child: Text(
                'Enter Number of Sets',
                style: TextStyle(fontSize: 27, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('SAVE'),
      ),
    );
  }
}
