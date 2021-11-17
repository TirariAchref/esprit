import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  //const ({Key? key}) : super(key: key);

  final String _image;//final executa wa9et el build el const 9bal build
  final String _title;
  final int _price;//_ signifie private

  const ProductInfo(this._image,this._title,this._price);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,//mainAxisAlignment = axe horizental axe des X car Row
          crossAxisAlignment: CrossAxisAlignment.center,//CrossAxisAlignment = axe Vertical axe des Y car row
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 20, 10),
                child: Image.asset(_image, width: 200, height: 94,)
            ),
            Column(//dans le cas column sinon el main wel cros yet3eksou fel Row
              mainAxisAlignment: MainAxisAlignment.center,//mainAxisAlignment = axe vertical axe des Y
              crossAxisAlignment: CrossAxisAlignment.start,//CrossAxisAlignment = axe horizental axe des X
              children: [
                Text(_title),
                Text(_price.toString()+" TND", textScaleFactor: 2,)
              ],
            )
          ],
        ),
      ),
    );
  }

}
