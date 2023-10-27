enum PieceType { pawn, rook, knight, bishop, king, queen }

class Piece {
  final PieceType type;
  final bool iswhite;
  final String imgpath;
  Piece({required this.type, required this.iswhite, required this.imgpath});
}
