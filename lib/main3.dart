import 'package:flutter/material.dart';

void main() => runApp(const BoilerPlateApp2());

class BoilerPlateApp2 extends StatelessWidget {
  const BoilerPlateApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: BoilerPlateExample(),
    );
  }
}

class BoilerPlateExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BoilerPlateExampleState();
}

enum Gender { male, female }

class _BoilerPlateExampleState extends State<BoilerPlateExample> {
  bool switchButton = false;
  Gender _gender = Gender.male;
  bool isChecked1 = false;
  bool isChecked2 = false;
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff4B6EB1),
        titleSpacing: 0,
        title: const Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 180, 0),
          child: Text(
            'SODA',
            style: TextStyle(
              fontSize: 20,
              height: 1.2,
              color: Colors.white,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        actions: <Widget>[
          Switch(
            activeColor: const Color(0xff4b6eb1),
            thumbColor: const MaterialStatePropertyAll(Color(0xffffffff)),
            value: switchButton,
            onChanged: (bool value) {
              setState(() {
                switchButton = value;
                if (value == true) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text('switch를 ON하였습니다'),
                      action: SnackBarAction(
                        label: 'Ok',
                        onPressed: () {},
                      ),
                    ),
                  );
                }
              });
            },
          ),
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
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 23, 24, 45),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xff21212114),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff182949)),
                ),
                hintText: 'Name',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Radio<Gender>(
                  activeColor: const Color(0xff4b6eb1),
                  value: Gender.male,
                  groupValue: _gender,
                  onChanged: (Gender? value) {
                    setState(() {
                      _gender = value!;
                    });
                  },
                ),
              ),
              const Text('Male'),
              const SizedBox(width: 50),
              Radio<Gender>(
                activeColor: const Color(0xff4b6eb1),
                value: Gender.female,
                groupValue: _gender,
                onChanged: (Gender? value) {
                  setState(() {
                    _gender = value!;
                  });
                },
              ),
              const Text('Female'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Checkbox(
                  activeColor: const Color(0xff4b6eb1),
                  value: isChecked1,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked1 = value!;
                    });
                  },
                ),
              ),
              const Text('Designer'),
              const SizedBox(width: 23),
              Checkbox(
                activeColor: const Color(0xff4b6eb1),
                value: isChecked2,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked2 = value!;
                  });
                },
              ),
              const Text('Developer'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(19, 72, 0, 0),
            child: Row(
              children: [
                const Expanded(flex: 2, child: Text('버튼을 눌러 날짜를 선택해주세요')),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 18, 0),
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffffffff),
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                          side:
                              BorderSide(color: Color.fromRGBO(0, 0, 0, 0.12))),
                    ),
                    onPressed: () async {
                      DateTime? newDate = await showDatePicker(
                        context: context,
                        initialDate: date,
                        firstDate: DateTime(1950),
                        lastDate: DateTime(2050),
                      );
                      if (newDate == null) return;
                      setState(() => date = newDate);
                    },
                    child: const Text('SELECT DATE',
                        style: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.25,
                          height: 1.14,
                          color: Color.fromRGBO(75, 110, 177, 1),
                        )),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 340),
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
