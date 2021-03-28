import 'package:flutter/material.dart';
import 'package:hackathon/utils/dtime-util.dart';

class AnomalyDashboard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anomaly Management'),
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
                padding: EdgeInsets.fromLTRB(0, 0, 100, 0),
                width: MediaQuery.of(context).size.width/4,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Search Host",
                        hintText: "Search",
                        focusColor: Colors.black12,
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25.0)))),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.9,
                child: ListView(
                  padding: const EdgeInsets.fromLTRB(100, 30, 100, 0),
                  children: [
                    PaginatedDataTable(
                      header: Text('Quarantine View', style: Theme.of(context).textTheme.headline4,),
                      rowsPerPage: 6,
                      columns: [
                        DataColumn(label: Text('Anomaly Number')),
                        DataColumn(label: Text('DateTime')),
                        DataColumn(label: Text('Host')),
                        DataColumn(label: Text('Anomaly')),
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
      this.valueD,
      );

  final int valueA;
  final String valueB;
  final String valueC;
  final DateTime valueD;

  bool selected = false;
}

class _DataSource extends DataTableSource {
  _DataSource(this.context) {
    _rows = <_Row>[
      _Row(1, 'Spike in resource utilization', 'demoserver02.homecredit.ph', generateDateAgnosticTime24Format(0)),
      _Row(2, 'Multiple server error occurrence', 'demoserver01.homecredit.ph', generateDateAgnosticTime24Format(3)),
      _Row(3, 'Unusually high traffic', 'demoserver01.homecredit.ph', generateDateAgnosticTime24Format(6)),
      _Row(4, 'Malicious payload', 'demoserver03.homecredit.ph', generateDateAgnosticTime24Format(15)),
      _Row(5, 'Malformed IO packets', 'demoserver03.homecredit.ph', generateDateAgnosticTime24Format(15)),
      _Row(6, 'Unusually high latency', 'demoserver02.homecredit.ph', generateDateAgnosticTime24Format(18)),
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
        DataCell(Text(row.valueD.toString(), style: Theme.of(context).textTheme.caption,)),
        DataCell(Text(row.valueC, style: Theme.of(context).textTheme.caption,)),
        DataCell(Text(row.valueB, style: Theme.of(context).textTheme.caption,), showEditIcon: true, placeholder: true),
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