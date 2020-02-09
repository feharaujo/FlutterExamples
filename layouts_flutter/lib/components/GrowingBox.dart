import 'package:flutter/material.dart';

class GrowingBox extends StatefulWidget {
  @override
  _GrowingBoxState createState() => _GrowingBoxState();
}

class _GrowingBoxState extends State<GrowingBox> {

  static const double _startingSize = 100.0;
  double _size = _startingSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: grow,
      onLongPress: resetSize,
      child: Container(
        width: _size,
        height: _size,
        color: Colors.green,
      ),
    );
  }

  void grow() {
    setState(() {
      _size *= 1.1;
    });
  }

  void resetSize() {
    setState(() {
      _size = _startingSize;
    });
  }
}
