import 'package:flutter/material.dart';

class AnimatedSwitcherp extends StatefulWidget {
  @override
  _AnimatedSwitcherpState createState() => _AnimatedSwitcherpState();
}

class _AnimatedSwitcherpState extends State<AnimatedSwitcherp> {
  static List<String> wine = [
    'images/vin_1.jpg',
    'images/vin.jpg',
    'images/wine1.jpg',
    'images/wine2.jpg'
  ];
  static List<String> winenamelist = ['Vin 1', 'Vin 2', 'Vin 3', 'Vin 4'];
  static List<String> winepricelist = ['5000\$', '15000\$', '3500\$', '150\$'];

  Widget image = Image.asset('${wine[3]}', width: 120, height: 400,key: Key(wine[3]));
  String winename = '${winenamelist[3]}';
  String price = '${winepricelist[3]}';

  int i = 0;

  void suivant() {
    if (i < wine.length - 1) {
      i++;
      setState(() {
        image = Image.asset('${wine[i]}', width: 120, height: 400,key: Key(wine[i]));
        winename = '${winenamelist[i]}';
        price = '${winepricelist[i]}';
      });
    }
  }

  void precedent() {
    if (i > 0) {
      i--;
      setState(() {
        image = Image.asset('${wine[i]}', width: 120, height: 400,key: Key(wine[i]),);
        winename = '${winenamelist[i]}';
        price = '${winepricelist[i]}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.accessibility_new,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
        title: Text(
          'FLUTTER : MINI-PROJET 5',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.grey[500],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30, left: 10, right: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50)),
                        child: Container(
                          color: Color(0xff680406),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 9.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.keyboard_arrow_left,
                                      size: 25,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'Vin de Luxe',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                    Icon(
                                      Icons.search,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Region : Ontario , CANADA',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    winename,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[500],
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[500],
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[500],
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[500],
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[500],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Stack(
                      children: [
                        Container(
                          // color: Colors.yellow,
                          width: 350,
                          height: 400,
                          child: Column(
                            children: [
                              Container(
                                // color: Colors.green,
                                width: 275,
                                height: 400,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 270, left: 100),
                                  child: Column(
                                    children: [
                                      Text(
                                        price,
                                        style: TextStyle(
                                            color: Color(0xff680406),
                                            fontSize: 17),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            'Alcool : 12.65%',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12),
                                          ),
                                          Text(
                                            '300ml',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: InkWell(
                                              onTap: () {
                                                precedent();
                                              },
                                              child: Container(
                                                width: 25,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    color: Color(0xff680406),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Icon(
                                                  Icons.keyboard_arrow_left,
                                                  color: Colors.white,
                                                  size: 25,
                                                ),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              suivant();
                                            },
                                            child: Container(
                                              width: 25,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                  color: Color(0xff680406),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Icon(
                                                Icons.keyboard_arrow_right,
                                                color: Colors.white,
                                                size: 25,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 100),
                          child: Container(
                            // color: Colors.red,
                            child: AnimatedSwitcher(
                                duration: Duration(seconds: 1),
                                transitionBuilder:
                                    (Widget assigned, Animation<double> animation) {
                                  /*return ScaleTransition(
                                    scale: animation,
                                    child: assigned,
                                  );*/
                                      final posAni=Tween<Offset>(
                                        begin: Offset(1,0),end:Offset(0,0)).animate(animation);
                                        return SlideTransition(position: posAni,child: assigned,);

                                },
                                child: image),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 375, left: 20, right: 20, bottom: 20),
                    child: Container(
                      //color: Colors.yellow,
                      width: 350,
                      child: Column(
                        children: [
                          Text(
                            'Description',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "I have wanted to add a MaterialImage widget that conceptually prints its image into the Material as well so that then the splashes would be over the image. We could have a MaterialDecoration which does something similar for a Decoration. Or we could have Material itself take a decoration. Right now it takes a color, but we could extend that to taking a whole decoration. It's not clear whether it's really material-spec-compatible to have a material with a gradient, though, so I'm not sure whether we should do that.",
                            style: TextStyle(color: Colors.black, fontSize: 12),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff680406),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70),
                        topRight: Radius.circular(70)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Ajout au panier',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ],
                      ),
                      Text(
                        '|',
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                      Text(
                        'CAISSE',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
