import 'package:flutter/material.dart';
import 'lien_class.dart';

class UiDismissible extends StatefulWidget {
  const UiDismissible({Key? key}) : super(key: key);

  @override
  _UiDismissibleState createState() => _UiDismissibleState();
}

class _UiDismissibleState extends State<UiDismissible> {
  final List<Listinfo> executer = [
    Listinfo('./images/lait.jpg', 'Le lait', '12/07/2020', Colors.orange),
    Listinfo('./images/pain.jpg', 'Le pain', '17/07/2020', Colors.red),
    Listinfo('./images/carburant.jpg', 'Le carburant', '12/08/2020',
        Colors.blueAccent),
    Listinfo('./images/vin.jpg', 'Le vin', '10/09/2021', Colors.green),
    Listinfo('./images/poisson.jpg', 'Le poisson', '15/09/2021', Colors.deepPurple),
    Listinfo('./images/viande.jpg', 'La viande', '08/03/2021', Colors.black87),
    Listinfo('./images/fleur.jpg', 'La fleur', '18/04/2021', Colors.yellow),
  ];

  @override
  Widget build(BuildContext context) {
    //page widget 7
    Widget Pagewidget(Listinfo entry) {
      return Padding(
        padding: EdgeInsets.all(10),
        child: Material(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(2)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    entry.image,
                    fit: BoxFit.cover,
                    height: 70,
                    width: 70,
                  ),
                  Text(
                    entry.detailcours,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    entry.dates,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,color: entry.colors,),
                  ),
                  Container(
                    width: 5,
                    height: 30,
                    color: entry.colors,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: SizedBox(
                  height: 2,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  child: Container(
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    ///////////////////
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.zoom_out_map,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
        title: Text(
          'FLUTTER : PROJET 2',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.yellowAccent,
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: executer.length,
          itemBuilder: (context, index) {
            Listinfo ls = executer[index];
            return Dismissible(
              key: Key(ls.detailcours),
              child: Pagewidget(ls),
              onDismissed: (direction) {
                setState(() {
                  executer.removeAt(index);
                });
                Scaffold.of(context).showSnackBar(SnackBar(
                  content:
                  Text(ls.detailcours + ", Supprimé de la liste"),
                  action: SnackBarAction(
                    label: "Annuler",
                    onPressed: () {
                      setState(() {
                        executer.add(ls);
                      });
                      Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text(ls.detailcours +
                              ", Rajouté à la fin de liste")
                      ),);
                    },
                  ),
                ));
              },
              background: Container(
                child: Row(
                  children: [
                    Icon(Icons.delete, size: 25, color: ls.colors,),
                    Text(" ${ls
                        .detailcours} sera supprimé(e) de la liste",
                      style: TextStyle(color: ls.colors,fontSize: 15,fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              secondaryBackground:Container(
                color: ls.colors,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.delete_forever),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
