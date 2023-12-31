import 'package:flutter/material.dart';
import 'package:chess/component/pieces.dart';

class Square extends StatelessWidget {
  final bool iswhite;
  final Piece? piece;
  final bool isSelected;
  final bool isValidmove;
  final void Function()? onTap;
  const Square(
      {required this.iswhite,
      required this.piece,
      required this.isSelected,
      required this.onTap,
      required this.isValidmove,
      super.key});

  @override
  Widget build(BuildContext context) {
    Color? squarecolor;
    if (isSelected) {
      squarecolor = Colors.yellow[300];
    } else if (isValidmove) {
      squarecolor = Colors.yellow[200];
    } else {
      squarecolor = iswhite
          ? const Color.fromARGB(179, 244, 244, 244)
          : const Color.fromARGB(221, 27, 104, 35);
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(6),
        color: squarecolor,
        child: piece != null
            ? Image.asset(
                piece!.imgpath,
                fit: BoxFit.cover,
              )
            : null,
      ),
    );
  }
}
