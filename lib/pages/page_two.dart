import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:assignement2_22b1530/bar_chart_model.dart';


class PageTwo extends StatefulWidget {

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  _PageTwoState({Key? key});
  final List<BarChartModel> data =[
    BarChartModel(
      item: "Groceries",
      amount: 100,
      color: charts.ColorUtil.fromDartColor(Colors.indigo),
    ),
    BarChartModel(
      item: "Bills",
      amount: 200,
      color: charts.ColorUtil.fromDartColor(Colors.deepOrange),
    ),
    BarChartModel(
      item: "Salary",
      amount: 300,
      color: charts.ColorUtil.fromDartColor(Colors.greenAccent),
    ),
  ];
  String s1 = "", s2 = "", a1 = "";
  String total = "";
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
        id: "Amount",
        data: data,
        domainFn: (BarChartModel series, _)=> series.item,
        measureFn: (BarChartModel series, _)=>series.amount,
        colorFn: (BarChartModel series, _)=> series.color,
      ),
    ];
    return Material(
      color: Colors.grey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 150.0),
            Container(
              width: 300,
              height: 50,
              alignment: Alignment.center,
              child: Text(
                "Total Amount: ₹$total",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [BoxShadow(blurRadius: 20)]),
            ),
            SizedBox(height: 60.0),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 25.0),
              child: Column(
                children: [
                  Container(
                    width: 300,
                    height: 50,
                    alignment: Alignment.center,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                          labelText: "Groceries",
                          hintText: "Enter Amount",
                          border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.deepOrange))),
                      onChanged: (val) {
                        s1 = val;
                      },
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Container(
                    width: 300,
                    height: 50,
                    alignment: Alignment.center,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                          labelText: "Bills",
                          hintText: "Enter Amount",
                          border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.deepOrange))),
                      onChanged: (val) {
                        s2 = val;
                      },
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Container(
                    width: 300,
                    height: 50,
                    alignment: Alignment.center,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                          labelText: "Salary",
                          hintText: "Enter Amount",
                          border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.deepOrange))),
                      onChanged: (val) {
                        a1 = val;
                        setState(() {
                          total = (-double.parse(s1) -
                                  double.parse(s2) +
                                  double.parse(a1))
                              .toString();
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 30.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
