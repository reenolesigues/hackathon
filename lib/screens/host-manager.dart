import 'package:flutter/material.dart';
import 'package:hackathon/widgets/alerta.dart';

class HostManager extends StatefulWidget {
  @override
  _HostManagerState createState() => _HostManagerState();
}

class _HostManagerState extends State<HostManager> {
  String _hostname = "N/A";
  String _ip = "N/A";
  String _cores = "N/A";
  String _memory = "N/A";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hosts Management'),
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
    ),
                    ),
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
                      ),
                    ),
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
                          _hostname = "demoserver01.homecredit.ph";
                          _ip = "192.168.0.11";
                          _cores = "4";
                          _memory = "8";
                        });
                      } , child: Text('demoserver01.homecredit.ph')),
                      Divider(color: Colors.black),
                      TextButton(onPressed: () {
                        setState(() {
                          _hostname = "demoserver02.homecredit.ph";
                          _ip = "192.168.0.12";
                          _cores = "2";
                          _memory = "4";
                        });
                      } , child: Text('demoserver02.homecredit.ph')),
                      Divider(color: Colors.black),
                      TextButton(onPressed: () {
                        setState(() {
                          _hostname = "demoserver03.homecredit.ph";
                          _ip = "192.168.0.13";
                          _cores = "4";
                          _memory = "16";
                        });
                      } , child: Text('demoserver03.homecredit.ph')),
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
                Text('Host Details', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
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
                      Text('Hostname: $_hostname', style: TextStyle(fontSize: 15,),),
                      Divider(color: Colors.black),
                      Text('IP: $_ip', style: TextStyle(fontSize: 15,),),
                      Divider(color: Colors.black),
                      Text('Cores: $_cores', style: TextStyle(fontSize: 15,),),
                      Divider(color: Colors.black),
                      Text('Memory: $_memory', style: TextStyle(fontSize: 15,),),
                      Divider(color: Colors.black),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
