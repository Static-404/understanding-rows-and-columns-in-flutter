import 'package:flutter/material.dart';

class ListTable extends StatelessWidget {
  const ListTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spotify'),
        centerTitle: true,
      ),
      body: Container(
        height: 150,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              buildCard(),
              SizedBox(width: 12,),
              buildCard(),
              SizedBox(width: 12,),
              buildCard(),
              SizedBox(width: 12,),
              buildCard(),
            ],
          ),
        ),
      ),
    );


  }
  Widget buildCard() => Container(
    width: 100,
    height: 100,
    color: Colors.red,
  );
}
