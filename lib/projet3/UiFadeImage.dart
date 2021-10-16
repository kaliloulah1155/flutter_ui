import 'package:flutter/material.dart';

class UiFadeImage extends StatefulWidget {
  const UiFadeImage({Key? key}) : super(key: key);

  @override
  _UiFadeImageState createState() => _UiFadeImageState();
}

class _UiFadeImageState extends State<UiFadeImage> {
  @override
  Widget build(BuildContext context) {
    //WIDGET
    Widget hairimage(String holder, String img) {
      return Container(
        height: 350,
        width: 200,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          child: Container(
            child: FadeInImage.assetNetwork(
              placeholder: holder,
              image: img,
              fadeInDuration: Duration(seconds: 5),
            ),
          ),
        ),
      );
    }

    Widget barby(String info) {
      return Container(
        height: 50,
        width: 200,
        child: Column(
          children: [
            Text(
              info,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.cyan),
            )
          ],
        ),
      );
    }

    //////
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.local_florist,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
        title: Text(
          'FLUTTER : PROJET 3',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.cyanAccent,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          FittedBox(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      hairimage("images/load1.gif",
                          "https://picsum.photos/id/1027/200/300"),
                      SizedBox(
                        width: 5,
                      ),
                      hairimage("images/spinner.gif",
                          "https://picsum.photos/id/1029/200/300")
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      barby("Lorem ipsum"),
                      barby("Lorem ipsum")
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      hairimage("images/load1.gif",
                          "https://picsum.photos/id/309/200/300"),
                      SizedBox(
                        width: 5,
                      ),
                      hairimage("images/spinner.gif",
                          "https://picsum.photos/id/405/200/300")
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      barby("Lorem ipsum"),
                      barby("Lorem ipsum")
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
