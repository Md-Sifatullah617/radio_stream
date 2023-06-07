import 'package:flutter/material.dart';

Widget imageData(url, {size}) {
  return Container(
    height: size ?? 55,
    width: size ?? 55,
    decoration: BoxDecoration(
        color: Color(0xffffe5ec),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 3))
        ]),
    child: Image.network(url),
  );
}
