import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class Design3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _backgroundApp(),
          SingleChildScrollView(
            child: Column(
              children: [
                _titles(),
                _roundedButtons(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _backgroundApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ],
        ),
      ),
    );

    final pinkBox = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 330.0,
        width: 330.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0),
            ],
          ),
        ),
      ),
    );

    return Stack(
      children: [
        gradiente,
        Positioned(
          top: -100.0,
          child: pinkBox,
        )
      ],
    );
  }

  Widget _titles() {
    return SafeArea(
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Classify transaction',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Classify this transaction into a particular category',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(
                color: Color.fromRGBO(116, 117, 152, 1),
              ),
            ),
      ),
      child: BottomNavigationBar(
        selectedFontSize: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
              size: 30,
            ),
            label: '',
          ),
        ],
      ),
    );
  }

  Widget _roundedButtons() {
    return Table(
      children: [
        TableRow(children: [
          _createRoundedButton(),
          _createRoundedButton(),
        ]),
        TableRow(children: [
          _createRoundedButton(),
          _createRoundedButton(),
        ]),
        TableRow(children: [
          _createRoundedButton(),
          _createRoundedButton(),
        ]),
      ],
    );
  }

  Widget _createRoundedButton() {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 10,
              ),
              CircleAvatar(
                backgroundColor: Colors.pinkAccent,
                radius: 35.0,
                child: Icon(
                  Icons.swap_calls,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Text(
                'Cosa',
                style: TextStyle(
                  color: Colors.pinkAccent,
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
