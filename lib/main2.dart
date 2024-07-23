import 'package:flutter/material.dart';

void main() => runApp(const BoilerPlateApp2());

class BoilerPlateApp2 extends StatelessWidget {
  const BoilerPlateApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BoilerPlateExample(),
    );
  }
}

class BoilerPlateExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BoilerPlateExampleState();
}

class _BoilerPlateExampleState extends State<BoilerPlateExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff4B6EB1),
        titleSpacing: 0,
        title: const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text(
            'SODA',
            style: TextStyle(
              fontSize: 20,
              height: 1.2,
              color: Colors.white,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff182949),
              ),
              child: Text(
                'SODA',
                style: TextStyle(
                  fontSize: 20,
                  height: 1.2,
                  color: Colors.white,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.favorite, color: Colors.grey),
              title: Padding(
                padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
                child: Text(
                  'Icon:favorite',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                    letterSpacing: 0.1,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          ListTileBody(),
          CustomedTextButton(),
          Container(
            height: 225,
            padding: const EdgeInsets.fromLTRB(17, 0, 0, 0),
            alignment: Alignment.bottomLeft,
            child: IconButton.filled(
                onPressed: () {},
                style: IconButton.styleFrom(
                    backgroundColor: const Color(0xff182949)),
                icon: const Icon(
                  Icons.settings,
                  color: Colors.white,
                )),
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(17, 18, 0, 30),
                alignment: Alignment.bottomLeft,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.transparent),
                      backgroundColor: (const Color(0xffFFE8E8))),
                  onPressed: () {},
                  child: Text(
                    'Outlined Button',
                    style: TextStyle(
                        color: Color.fromRGBO(24, 41, 73, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.1),
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 30),
                      alignment: Alignment.bottomRight,
                      child: FloatingActionButton(
                        onPressed: () {},
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0))),
                        backgroundColor: const Color(0xff182949),
                        child: const Icon(Icons.add, color: Colors.white),
                      )))
            ],
          ),
          const Divider(
            height: 1,
            thickness: 1,
            indent: 13,
            endIndent: 14,
            color: Colors.black,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(65, 13, 64, 13),
            child: Text('Copyright 2022 SODA All rights reserved.',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
          ),
        ],
      ),
    );
  }
}

class ListTileBody extends StatelessWidget {
  const ListTileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 275,
      child: ListView(
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 2),
            child: Card(
              margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
              child: ListTile(
                leading: Icon(Icons.airplay),
                title: Text(
                  'This is List tile',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: 'Roboto'),
                ),
                subtitle: Text('List tile 1'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 2),
            child: Card(
              margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
              child: ListTile(
                leading: Icon(Icons.airplay),
                title: Text(
                  'This is List tile',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('List tile 2'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 2),
            child: Card(
              margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
              child: ListTile(
                leading: Icon(Icons.airplay),
                title: Text(
                  'This is List tile',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('List tile 3'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomedTextButton extends StatelessWidget {
  const CustomedTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 11),
        child: TextButton(
          onPressed: () {},
          child: const Text(
            'TEXT BUTTON',
            style: TextStyle(
              color: Color(0xff182949),
            ),
          ),
        ),
      ),
    );
  }
}
