import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollableCardRows(),
    );
  }
}

class ScrollableCardRows extends StatelessWidget {
  ScrollableCardRows({super.key});
  final List<String> rowDescriptions = [
    'Row 1 ',
    'Row 2 ',
    'Row 3 ',
    'Row 4 ',
    'Row 5 ',
    'Row 6 ',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Rows'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.black26,
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (notification) {
          notification.disallowIndicator();
          return true;
        },
        child: Scrollbar(
          thickness: 7.0,
          radius: const Radius.circular(10.0),
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, rowIndex) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 7.0),
                    child: Text(
                      rowDescriptions[rowIndex],
                      style: const TextStyle(
                        color: Colors.black26,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Scrollbar(
                    thickness: 6.0,
                    radius: const Radius.circular(10.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          10,
                              (index) => const CardBox(
                              cardText: 'Card Text',
                              imageAsset: 'assets/images/pic1.png',
                            ),
                      ),
                    ),
                    ),
                  ),
                ],
              );
            },
            ),
        ),
      ),
      );
  }
}

class CardBox extends StatelessWidget {
  final String cardText;
  final String imageAsset;

  const CardBox({super.key,
    required this.cardText,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Container(
        width: 150.0,
        height: 100.0,
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
          image: AssetImage(imageAsset),
          fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            cardText,
            style: const TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
