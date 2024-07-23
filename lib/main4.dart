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
  bool _isSelected1 = false;
  bool _isSelected2 = false;
  bool _isSelected3 = false;
  bool _isSelected4 = false;
  final GlobalKey<TooltipState> tooltipkey = GlobalKey<TooltipState>();

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
            Padding(
              padding: const EdgeInsets.fromLTRB(19, 35, 0, 23),
              child: Align(
                alignment: Alignment.topLeft,
                child: const Text(
                  'DAY 8',
                  style: TextStyle(
                    letterSpacing: 0.15,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(1, 0, 0, 0),
              child: Container(
                width: 349,
                child: Card(
                  child: Column(
                    children: [
                      ListTile(
                        title: const Text(
                          'Boilerplate 4',
                          style: TextStyle(
                            letterSpacing: 0.15,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              '\n어느덧 SODA 캠프 8일차가 되었네요! 여기까지 달려오시느라 수고 많으셨어요 :) \n\n아래 있는 CANCEL과 SUBMIT은 버튼입니다 !!',
                              style: TextStyle(
                                letterSpacing: 0.25,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const SizedBox(width: 20),
                          TextButton(
                            child: const Text('CANCEL'),
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                Color(0xff4B6EB1),
                              ),
                            ),
                            onPressed: () {},
                          ),
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('SUBMIT'),
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                Color(0xff4B6EB1),
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(19, 14, 45, 0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Wrap(
                  spacing: 8.0,
                  runSpacing: 4.0,
                  children: <Widget>[
                    ChoiceChip(
                      showCheckmark: false,
                      selectedColor: Color(0xff182949),
                      backgroundColor: Color(0xff21212114),
                      selected: _isSelected1,
                      side: BorderSide.none,
                      label: const Text('SODA'),
                      shape: StadiumBorder(
                        side: BorderSide(
                          width: 1.0,
                        ),
                      ),
                      labelStyle: TextStyle(
                        color: _isSelected1 ? Colors.white : Colors.black,
                      ),
                      onSelected: (_) {
                        _isSelected1 = !_isSelected1;
                        _isSelected2 = false;
                        _isSelected3 = false;
                        _isSelected4 = false;
                        setState(() {});
                      },
                    ),
                    ChoiceChip(
                      showCheckmark: false,
                      selectedColor: Color(0xff182949),
                      backgroundColor: Color(0xff21212114),
                      selected: _isSelected2,
                      label: const Text('CAMP'),
                      shape: StadiumBorder(
                        side: BorderSide(
                          width: 1.0,
                        ),
                      ),
                      side: BorderSide.none,
                      labelStyle: TextStyle(
                        color: _isSelected2 ? Colors.white : Colors.black,
                      ),
                      onSelected: (_) {
                        setState(() {
                          _isSelected2 = !_isSelected2;
                          _isSelected1 = false;
                          _isSelected3 = false;
                          _isSelected4 = false;
                        });
                      },
                    ),
                    ChoiceChip(
                      showCheckmark: false,
                      selectedColor: Color(0xff182949),
                      backgroundColor: Color(0xff21212114),
                      selected: _isSelected3,
                      label: const Text('FUN'),
                      shape: StadiumBorder(
                        side: BorderSide(
                          width: 1.0,
                        ),
                      ),
                      side: BorderSide.none,
                      labelStyle: TextStyle(
                        color: _isSelected3 ? Colors.white : Colors.black,
                      ),
                      onSelected: (_) {
                        setState(() {
                          _isSelected3 = !_isSelected3;
                          _isSelected1 = false;
                          _isSelected2 = false;
                          _isSelected4 = false;
                        });
                      },
                    ),
                    ChoiceChip(
                      showCheckmark: false,
                      selectedColor: Color(0xff182949),
                      backgroundColor: Color(0xff21212114),
                      selected: _isSelected4,
                      label: const Text('FLUTTER'),
                      shape: StadiumBorder(
                        side: BorderSide(
                          width: 1.0,
                        ),
                      ),
                      side: BorderSide.none,
                      labelStyle: TextStyle(
                        color: _isSelected4 ? Colors.white : Colors.black,
                      ),
                      onSelected: (_) {
                        setState(() {
                          _isSelected4 = !_isSelected4;
                          _isSelected1 = false;
                          _isSelected2 = false;
                          _isSelected3 = false;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 320,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Tooltip(
                  key: tooltipkey,
                  triggerMode: TooltipTriggerMode.manual,
                  showDuration: const Duration(seconds: 1),
                  message: 'Tooltip',
                ),
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            tooltipkey.currentState?.ensureTooltipVisible();
          },
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0))),
          backgroundColor: const Color(0xff182949),
          child: const Icon(Icons.add, color: Colors.white),
        ));
  }
}
