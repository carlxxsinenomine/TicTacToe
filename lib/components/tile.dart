import 'package:flutter/cupertino.dart';

class Tile extends StatelessWidget {

  final Widget? tileChild;
  final VoidCallback? onPress;

  const Tile({
    this.tileChild,
    this.onPress
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: AspectRatio(
        aspectRatio: 1, // width : height = 1:1
        child: Container(
          margin: EdgeInsets.all(9.0),
          decoration: BoxDecoration(
            color: Color(0xFFF16767),
            borderRadius: BorderRadius.circular(10.0)
          ),
          child: tileChild,
        ),
      ),
    );
  }
}
