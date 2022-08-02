import 'package:flutter/material.dart';

class ColorScreen extends StatefulWidget {
  @override
  _ColorScreenState createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  List<String> colors = [
    "Pink",
    "White",
    "Black",
    "Move",
    "Purple",
    "Wine",
    "Blue",
    "Green",
  ];
  List<String> selected = ["black", "pink", "white"];
  var colorId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deneme"),
      ),
      body: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.blueAccent, width: 2),
            borderRadius: BorderRadius.all((Radius.circular(10)))),
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 24),
        margin: EdgeInsets.all(12),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<int>(
            items: colors.map((c) {
              return DropdownMenuItem<int>(
                child: Text(
                  c,
                  style: TextStyle(fontSize: 24),
                ),
                value: colors.indexOf(c),
              );
            }).toList(),
            value: colorId,
            onChanged: (secilenOncelikId) {
              setState(() {
                colorId = secilenOncelikId;
              });
            },
            hint: Text("Select Color"),
          ),
        ),
      ),
    );
  }
}
