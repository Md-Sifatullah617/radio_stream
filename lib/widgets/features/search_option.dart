import 'package:flutter/material.dart';

Widget searchRadioChannel() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
    decoration: BoxDecoration(
        color: Colors.grey, borderRadius: BorderRadius.circular(10)),
    child: Row(
      children: [
        Icon(Icons.search),
        Flexible(
          child: TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(5),
                hintText: "Search Radio"),
          ),
        ),
      ],
    ),
  );
}
