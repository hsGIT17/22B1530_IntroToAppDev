import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PageTwo extends StatefulWidget {
  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  String s1 = "", s2 = "", a1 = "";
  String total = "";
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                  color: Colors.deepOrangeAccent,
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
