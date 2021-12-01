import 'package:flutter/material.dart';
class CardWidget extends StatelessWidget {
  final String _image;
  final String  _title;

  const CardWidget( this._image, this._title) ;

  @override
  Widget build(BuildContext context) {
      return Card(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 20, 0),
            child: Image.asset(_image, width: 300 , height: 100),
          ),
         Text(_title)
        ],
      ),
    );
  }
}