import 'package:flutter/cupertino.dart';

class Tile extends StatelessWidget {

  final Color color;
  final Widget? tileChild;
  final VoidCallback? onPress;

  const Tile({
    required this.color,
    this.tileChild,
    this.onPress
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0)
        ),
        child: tileChild,
      ),
    );
  }
}
