import 'package:flutter/material.dart';
import 'package:hackathon/widgets/alerta.dart';

class ModelManager extends StatefulWidget {
  @override
  _ModelManagerState createState() => _ModelManagerState();
}

class _ModelManagerState extends State<ModelManager> {
  String _status = "N/A";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Model Management'),
        backgroundColor: Colors.black87,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
                0.1,
                0.4,
                0.6,
                0.9,
              ],
              colors: [
                Colors.yellow,
                Colors.red,
                Colors.indigo,
                Colors.teal,
              ],
            )
        ),
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton.icon(
                        onPressed: () => alertDisable(context) ,
                        icon: Icon(Icons.add_box_rounded),
                        label: Text('Add'),
                        style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            return Colors.grey; // Use the component's default.
                          },
                        ),
                      ),),
                    SizedBox(width: 10,),
                    ElevatedButton.icon(
                        onPressed: () => alertDisable(context) ,
                        icon: Icon(Icons.delete_forever),
                        label: Text('Delete'),
                        style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            return Colors.grey; // Use the component's default.
                          },
                        ),
                      ),),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        style: BorderStyle.solid
                    ),
                  ),
                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width/3,
                  child: ListView(
                    padding: EdgeInsets.all(10),
                    children: [
                      TextButton(onPressed: () {
                        setState(() {
                          _status = "Learning";
                        });
                      } , child: Text('Model A')),
                      Divider(color: Colors.black),
                      TextButton(onPressed: () {
                        setState(() {
                          _status = "Ready";
                        });
                      } , child: Text('Model B')),
                      Divider(color: Colors.black),
                      TextButton(onPressed: () {
                        setState(() {
                          _status = "Error";
                        });
                      } , child: Text('Model C')),
                      Divider(color: Colors.black),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Model Status', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Container(
                  // color: Colors.red,
                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width/3,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('$_status', style: TextStyle(fontSize: 50,),),
                      Divider(color: Colors.black),
                    ],
                  ),
                ),
                ElevatedButton.icon(
                    onPressed: () => alertDisable(context) ,
                    icon: Icon(Icons.settings),
                    label: Text('Configure'),
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        return Colors.grey; // Use the component's default.
                      },
                    ),
                  ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
