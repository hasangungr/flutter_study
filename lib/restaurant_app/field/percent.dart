import 'package:flutter/material.dart';
Widget percentCard(double percent, Color color){
    return Container(
      margin: EdgeInsets.all(8),
      width: 300,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.symmetric(horizontal:  8),
      child: Stack(
        children: [
          Container(
            width: 300 * percent,
            height: 30,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              '${(percent * 100).toStringAsFixed(0)}%',
              style: TextStyle(
               // color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

