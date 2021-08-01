import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Table()));
}

class Table extends StatefulWidget {
  const Table({Key? key}) : super(key: key);

  @override
  _TableState createState() => _TableState();
}

class _TableState extends State<Table> {
  var num = 1;
  var result = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    calcultetable();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.blueGrey[400],
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      calcultetable();
                      // for (var i = 1; i <= 10; i++) {
                      //   print("$num * $i = ${num * i}");
                      //   result += "$num * $i = ${num * i}";
                      // }
                      setState(() {
                        num = num - 1;
                      });
                    },
                    child: Text("previous"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      calcultetable();
                      // for (var i = 1; i <= 10; i++) {
                      //   print("$num * $i = ${num * i}");
                      //   result += "$num * $i = ${num * i}\n";
                      // }
                      setState(() {
                        num = num + 1;
                      });
                    },
                    child: Text("next"),
                  ),
                  
                ],
              ),
              Text(result),
            ],
          ),
        ),
      ),
    );
    }
    calcultetable() {
      result = "";
      for (var i = 1; i <= 10; i++) {
        //print("$num * $i = ${num * i}");
        result += "$num * $i = ${num * i}\n";
      }
      setState(() {

      });
  }
}
