import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell.dart';


class UiFoldingPage extends StatefulWidget {
  UiFoldingPage({Key? key, this.title='UI FOLDING'}) : super(key: key);
  final String title;
  @override
  State<UiFoldingPage> createState() => _UiFoldingPageState();
}

class _UiFoldingPageState extends State<UiFoldingPage> {

  final foldingCellKey = GlobalKey<SimpleFoldingCellState>();
  final foldingCellKey1 = GlobalKey<SimpleFoldingCellState>();
  final foldingCellKey2 = GlobalKey<SimpleFoldingCellState>();
  final foldingCellKey3 = GlobalKey<SimpleFoldingCellState>();
  final foldingCellKey4 = GlobalKey<SimpleFoldingCellState>();
  final foldingCellKey5 = GlobalKey<SimpleFoldingCellState>();

  Widget hautWidget(
      String image,
       String namemenu,
       String price,
      GlobalKey<SimpleFoldingCellState> foldingCell ){
    return Container(
      color: Color(0xFFecf2f9),
      padding: EdgeInsets.only(top: 10),
      child: Stack(
         children: [
           Align(
             alignment: Alignment.topCenter,
             child: Wrap(
               children: [
                 Image.asset(image,width: 200,)
               ],
             ),
           ),

           Align(
             alignment: Alignment.center,
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   SizedBox(height: 80,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       SizedBox(width: 20,),
                       Text('$namemenu : ',style: TextStyle(color: Colors.black,
                           fontSize: 15.0,fontWeight: FontWeight.bold),),
                       SizedBox(width: 15,),
                       Text('$price F CFA',style: TextStyle(color: Colors.black,
                           fontSize: 15.0,fontWeight: FontWeight.bold),),
                     ],
                   ),
                   Divider(thickness: 2,),
                   Text("Lorem, ipsum dolor sit amet consectetur adipisicing elit. Labore enim repellat tempore similique distinctio obcaecati at soluta velit fugiat necessitatibus optio, ipsum ipsam perspiciatis magnam reprehenderit rem! Eius, nesciunt dolorum.")
                 ],

               ),
             ),
           ),
           Positioned(
              right: 10,
              bottom: 10,
              child: TextButton(
                        onPressed: () => foldingCell?.currentState?.toggleFold(),
                        child: Text(
                          "Fermer",
                        ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: Size(80, 40),
                      ),
                   ),
              ),
         ],
      ),
    );
  }

  Widget principal(
      String menu,
      IconData iconmenu,
      String image,
          GlobalKey<SimpleFoldingCellState> foldingCell
      ){
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: Row(
        children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.purple
              ),
              child:Container(
                child: Row(
                  children: [
                    Container(
                      child:Padding(
                        padding: EdgeInsets.only(left: 10,top: 70,right: 10),
                        child:Column(
                            children: [
                              Text(
                               menu,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),
                              ),
                              Icon(
                               iconmenu,
                                size: 50,
                                color: Colors.white,
                              )
                            ],
                        ) ,
                      ) ,
                    ),
                  ],
                ),
              ) ,
            ),
            Container(
              margin: EdgeInsets.only(left: 1),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
               ),
              child:   Center(
                child: Container(
                  child: FlatButton(
                    onPressed: (){
                      foldingCell?.currentState?.toggleFold();
                    },
                    child:Container(
                        width: MediaQuery.of(context).size.width*0.5,
                        child: Image.asset(image,),
                    ),
                   // child: Text('beee'),
                   // color: Colors.blue[100],
                  ),
                ),
              )
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            widget.title,
            style: TextStyle(fontSize: 17.0,color: Colors.white),
        ),
      ),
      body:  Container(
          color: Colors.white10,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 130,bottom: 15,top: 10),
                  child: Text(
                      "Mon restaurant",
                      style: TextStyle(color: Colors.purple,fontSize: 20,fontWeight: FontWeight.bold),
                  ),
              ),
              Container(
                child: SimpleFoldingCell.create(
                  key: foldingCellKey,
                  frontWidget: principal('SALADE',Icons.restaurant,'images/salade.jpg',foldingCellKey),
                  innerWidget: hautWidget('images/salade.jpg','Salade de mer','15 000',foldingCellKey),
                  cellSize: Size(MediaQuery.of(context).size.width,200),
                ),
              ),
              Container(
                child: SimpleFoldingCell.create(
                  key: foldingCellKey1,
                  frontWidget: principal('POISSON',Icons.water,'images/poisson1.jpg',foldingCellKey1),
                  innerWidget: hautWidget('images/poisson1.jpg','Poisson','20 000',foldingCellKey1),
                  cellSize: Size(MediaQuery.of(context).size.width,200),
                ),
              ),
              Container(
                child: SimpleFoldingCell.create(
                  key: foldingCellKey2,
                  frontWidget: principal('SOUPE',Icons.kitchen,'images/soupe1.png',foldingCellKey2),
                  innerWidget: hautWidget('images/soupe1.png','Soupe','12 000',foldingCellKey2),
                  cellSize: Size(MediaQuery.of(context).size.width,200),
                ),
              ),
              Container(
                child: SimpleFoldingCell.create(
                  key: foldingCellKey3,
                  frontWidget: principal('VIANDE',Icons.no_meals,'images/meat1.jpg',foldingCellKey3),
                  innerWidget: hautWidget('images/meat2.png','Viande','5 000',foldingCellKey3),
                  cellSize: Size(MediaQuery.of(context).size.width,200),
                ),
              ),

            ],
          ),

      ),

    );
  }
}