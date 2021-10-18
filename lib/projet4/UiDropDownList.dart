import 'package:flutter/material.dart';

class UiDropDownList extends StatefulWidget {
  @override
  _UiDropDownListState createState() => _UiDropDownListState();
}

class _UiDropDownListState extends State<UiDropDownList> {
  List<DropdownMenuItem<String>> listmonths = [];

  String def ='One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.work,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
        title: Text(
          'FLUTTER : DROPDOWNLIST',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: DropdownButton<String>(
                      value: def,
                      elevation: 10,
                      hint: Text(
                        "Selectionner le mois",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          def = newValue!;
                         });
                      },
                      items: <String>['One', 'Janvier', 'Fevrier', 'Mars', 'Avril','Mai'].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: value=='One' ? Text(
                            "Selectionner le mois",
                            style: TextStyle(
                                color: Colors.blue, fontWeight: FontWeight.bold),
                          ):  Text(value,style: TextStyle(color: Colors.blue),),
                        );
                      }).toList(),
                    ),
                  ),

                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
               child: def=="One" ? Text("") : Text("$def",style: TextStyle(fontSize: 50),) ,
            ),
          )
        ],
      ),
    );
  }
}
