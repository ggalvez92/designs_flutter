import 'package:flutter/material.dart';

class Design2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          _pagina1(),
          _pagina2(),
        ],
      ),
    );
  }

  Widget _pagina1() {
    return Stack(
      children: [
        _colorFondo(),
        _imagenFondo(),
        _textos(),
      ],
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 0.5),
    );
  }

  Widget _imagenFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage(
          'assets/images/scroll.png',
        ),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _textos() {
    final textSTyle = TextStyle(color: Colors.white, fontSize: 50);
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Text(
            '11°',
            style: textSTyle,
          ),
          Text(
            'Miércoles',
            style: textSTyle,
          ),
          Expanded(
            child: Container(),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            size: 70,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  Widget _pagina2() {
    return Container(
      color: Color.fromRGBO(108, 192, 218, 1.0),
      height: double.infinity,
      width: double.infinity,
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 20.0,
            ),
            child: Text(
              'Bienvenidos',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
