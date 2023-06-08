import 'package:flutter/material.dart';
import 'package:questions/models/boxes.dart';

class GridTable extends StatelessWidget {
  const GridTable({super.key, required this.boxes});
  final Map boxes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid'),
        centerTitle: true,
        backgroundColor: Colors.white,
        shadowColor: Colors.black12,
      ),
      body: NormalRow(),
    );
  }

  Widget Boxes(String s, MaterialColor blue){
    var box = Box.fromMap(boxes);
    return Container(
      constraints: BoxConstraints.tightFor(height: 125.0, width: 100.0),
      // height: 20
      decoration: BoxDecoration(color: box.color),
      child: Text(box.boxText),
    );
  }

  Widget NormalRow(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Boxes('hello',Colors.blue)
      ],
    );
  }
}
