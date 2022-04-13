import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int score;

  Result(this.score);

  @override
  Widget build(BuildContext context) {
    String? s;
    if (score < 10) {
      s = 'you are bad!';
    } else if (score > 10 && score < 30) {
      s = 'you are innocent';
    } else if (score > 30 && score < 40) {
      s = 'you are smart!';
    }

    return Container(
        color: Colors.white,
        child: Center(
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)),
            elevation: 10.0,
            child: Container(
              width: 300.0,
              height: 400.0,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  // This will hold the Image in the back ground:

                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.indigoAccent),
                  ),
                  // This is the Custom Shape Container
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                  // This Holds the Widgets Inside the the custom Container;
                  Positioned(
                    bottom: 10.0,
                    child: Container(
                      alignment: Alignment.center,
                      height: 80.0,
                      width: 260.0,
                      color: Colors.pink.withOpacity(0.7),
                      child: Text(
                        '$s',
                        style:
                            const TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class CustomContainerShapeBorder {
  final double height;
  final double width;
  final Color fillColor;
  final double radius;

  CustomContainerShapeBorder({
    this.height: 400.0,
    this.width: 300.0,
    this.fillColor: Colors.white,
    this.radius: 50.0,
  });
  @override
  void paint(Canvas canvas, Size size) {
    Path path = new Path();
    path.moveTo(0.0, -radius);
    path.lineTo(0.0, -(height - radius));
    path.conicTo(0.0, -height, radius, -height, 1);
    path.lineTo(width - radius, -height);
    path.conicTo(width, -height, width, -(height + radius), 1);
    path.lineTo(width, -(height - radius));
    path.lineTo(width, -radius);

    path.conicTo(width, 0.0, width - radius, 0.0, 1);
    path.lineTo(radius, 0.0);
    path.conicTo(0.0, 0.0, 0.0, -radius, 1);
    path.close();
    canvas.drawPath(path, Paint()..color = fillColor);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
