import 'package:flutter/material.dart';

class Design1Page extends StatelessWidget {
  final _titleStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final _subtitleStyle = TextStyle(fontSize: 18.0, color: Colors.black45);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _createImagePortrait(),
            _createContentTitle(),
            _createActions(),
            _createDescription(),
            _createDescription(),
            _createDescription(),
            _createDescription(),
            _createDescription(),
          ],
        ),
      ),
    );
  }

  Widget _createImagePortrait() {
    return Image(
      image: NetworkImage(
        "https://images.theconversation.com/files/125391/original/image-20160606-13080-s7o3qu.jpg?ixlib=rb-1.1.0&rect=273%2C0%2C2639%2C1379&q=45&auto=format&w=926&fit=clip",
      ),
      fit: BoxFit.cover,
    );
  }

  Widget _createContentTitle() {
    return SafeArea(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20.0),
        child: Row(
          children: [
            Container(
              // width: size.width * 0.75,
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tïtulo de landscape",
                      style: _titleStyle,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Ena s ad ds ad d wwwadwada wasd s aw wdawwwd sswds da wdwq dq wqddqdw  ",
                      style: _subtitleStyle,
                    )
                  ],
                ),
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              "41",
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _createActionButton(Icons.call, 'CALL'),
        _createActionButton(Icons.near_me, 'ROUTE'),
        _createActionButton(Icons.share, 'Share'),
      ],
    );
  }

  Widget _createActionButton(IconData icon, String text) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }

  Widget _createDescription() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Text(
        "Culpa non sint ut tempor ipsum nulla mollit enim excepteur officia. Reprehenderit nostrud ullamco exercitation proident exercitation laboris consectetur tempor id do labore quis tempor. Elit pariatur adipisicing irure do sint ad culpa quis sit. Laboris cillum qui incididunt ipsum culpa ex ex labore.",
        textAlign: TextAlign.justify,
      ),
    );
  }
}
