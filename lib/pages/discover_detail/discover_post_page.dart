import 'package:flutter/material.dart';

class DiscoverPostPage extends StatefulWidget {
  const DiscoverPostPage({Key? key}) : super(key: key);

  @override
  _DiscoverPostPageState createState() => _DiscoverPostPageState();
}

class _DiscoverPostPageState extends State<DiscoverPostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //1
      body: CustomScrollView(
        slivers: <Widget>[
          //2
          SliverAppBar(
            expandedHeight: 250.0,
            //snap: true,
            floating: true,
            title: Text('Goa', textScaleFactor: 1),
            backgroundColor: Colors.red,
            flexibleSpace: FlexibleSpaceBar(
              //title: Text('Goa', textScaleFactor: 1),
              background: Image.asset(
                'assets/temp/temp_img.png',
                fit: BoxFit.fill,
              ),
            ),
          ),

          //3
          /*
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, int index) {
                return ListTile(
                  leading: Container(
                      padding: EdgeInsets.all(8),
                      width: 100,
                      child: Placeholder()),
                  title: Text('Place ${index + 1}', textScaleFactor: 2),
                );
              },
              childCount: 20,
            ),
          ),*/
        ],
      ),
    );
  }
}
