import 'package:flutter/material.dart';
import 'package:hackathon/widgets/alerta.dart';

class ModelDashboard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Model Management'),
        backgroundColor: Colors.black87,
      ),
      body: SingleChildScrollView(
        child: Container(
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: MediaQuery.of(context).size.width/4,
                padding: EdgeInsets.fromLTRB(0, 0, 100, 0),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Search Model",
                        hintText: "Search",
                        focusColor: Colors.black12,
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        )
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                // width: MediaQuery.of(context).size.width/3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                      icon: Icon(Icons.edit),
                      label: Text('Configure'),
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
              ),
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.9,
                child: ListView(
                  padding: EdgeInsets.fromLTRB(100, 5, 100, 0),
                  children: [
                    PaginatedDataTable(
                      header: Text('Model Status', style: Theme.of(context).textTheme.headline4,),
                      rowsPerPage: 3,
                      columns: [
                        DataColumn(label: Text('Number')),
                        DataColumn(label: Text('Hostname')),
                        DataColumn(label: Text('Status')),
                      ],
                      source: _DataSource(context),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Row {
  _Row(
      this.valueA,
      this.valueB,
      this.valueC,
      );

  final int valueA;
  final String valueB;
  final String valueC;

  bool selected = false;
}

class _DataSource extends DataTableSource {
  _DataSource(this.context) {
    _rows = <_Row>[
      _Row(1, 'demoserver01.homecredit.ph', 'Learning'),
      _Row(2, 'demoserver02.homecredit.ph', 'Ready'),
      _Row(3, 'demoserver03.homecredit.ph', 'Error'),
    ];
  }

  final BuildContext context;
  List<_Row> _rows;

  int _selectedCount = 0;

  @override
  DataRow getRow(int index) {
    assert(index >= 0);
    if (index >= _rows.length) return null;
    final row = _rows[index];
    return DataRow.byIndex(
      index: index,
      selected: row.selected,
      onSelectChanged: (value) {
        if (row.selected != value) {
          _selectedCount += value ? 1 : -1;
          assert(_selectedCount >= 0);
          row.selected = value;
          notifyListeners();
        }
      },
      cells: [
        DataCell(Text(row.valueA.toString(), style: Theme.of(context).textTheme.caption,)),
        DataCell(Text(row.valueB, style: Theme.of(context).textTheme.caption,)),
        DataCell(Text(row.valueC, style: Theme.of(context).textTheme.headline6,)),
      ],
    );
  }

  @override
  int get rowCount => _rows.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => _selectedCount;
}