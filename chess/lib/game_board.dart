import 'package:flutter/material.dart';

import 'package:chess/component/square.dart';
import 'package:chess/helper/square_color_controller.dart';
import 'package:chess/component/pieces.dart';

class GameBoard extends StatefulWidget {
  const GameBoard({super.key});

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  late List<List<Piece?>> board;
  Piece? selected;
  int selectedrow = -1;
  int selectedcol = -1;
  List<List<int>> validmove = [];

  @override
  void initState() {
    super.initState();
    initialposition();
  }

  void initialposition() {
    List<List<Piece?>> newBoard = List.generate(
        8,
        (index) => List.generate(
              8,
              (index) => null,
            ));
    // pawn
    for (var i = 0; i < 8; i++) {
      newBoard[1][i] = Piece(
          type: PieceType.pawn, iswhite: false, imgpath: 'lib/assets/BP_0.png');
    }
    for (var i = 0; i < 8; i++) {
      newBoard[6][i] = Piece(
          type: PieceType.pawn, iswhite: true, imgpath: 'lib/assets/WP_0.png');
    }
    // rook
    newBoard[0][0] = Piece(
        type: PieceType.rook, iswhite: false, imgpath: 'lib/assets/BR_0.png');
    newBoard[0][7] = Piece(
        type: PieceType.rook, iswhite: false, imgpath: 'lib/assets/BR_0.png');
    newBoard[7][0] = Piece(
        type: PieceType.rook, iswhite: true, imgpath: 'lib/assets/WR_0.png');
    newBoard[7][7] = Piece(
        type: PieceType.rook, iswhite: true, imgpath: 'lib/assets/WR_0.png');
    // knight
    newBoard[0][1] = Piece(
        type: PieceType.knight, iswhite: false, imgpath: 'lib/assets/BN_0.png');
    newBoard[0][6] = Piece(
        type: PieceType.knight, iswhite: false, imgpath: 'lib/assets/BN_0.png');
    newBoard[7][1] = Piece(
        type: PieceType.knight, iswhite: true, imgpath: 'lib/assets/WN_0.png');
    newBoard[7][6] = Piece(
        type: PieceType.knight, iswhite: true, imgpath: 'lib/assets/WN_0.png');
    // bishop
    newBoard[0][2] = Piece(
        type: PieceType.bishop, iswhite: false, imgpath: 'lib/assets/BB_0.png');
    newBoard[0][5] = Piece(
        type: PieceType.bishop, iswhite: false, imgpath: 'lib/assets/BB_0.png');
    newBoard[7][2] = Piece(
        type: PieceType.bishop, iswhite: true, imgpath: 'lib/assets/WB_0.png');
    newBoard[7][5] = Piece(
        type: PieceType.bishop, iswhite: true, imgpath: 'lib/assets/WB_0.png');
    // king
    newBoard[0][4] = Piece(
        type: PieceType.king, iswhite: false, imgpath: 'lib/assets/BK_0.png');
    newBoard[7][4] = Piece(
        type: PieceType.king, iswhite: true, imgpath: 'lib/assets/WK_0.png');
    // queen
    newBoard[0][3] = Piece(
        type: PieceType.queen, iswhite: false, imgpath: 'lib/assets/BQ_0.png');
    newBoard[7][3] = Piece(
        type: PieceType.queen, iswhite: true, imgpath: 'lib/assets/WQ_0.png');

    board = newBoard;
  }

  void pieceInteraction(int row, int col) {
    if (board[row][col] != null) {
      setState(() {
        selected = board[row][col];
        selectedrow = row;
        selectedcol = col;
        validmove = allpossiblemoves(selectedrow, selectedcol, selected);
      });
    }
  }

  List<List<int>> allpossiblemoves(int row, int col, Piece? selected) {
    List<List<int>> moves = [];
    int dir = selected!.iswhite ? -1 : 1;

    switch (selected.type) {
      case PieceType.pawn:
        // moves ones
        if (isinBoard(row + dir, col) && board[row + dir][col] == null) {
          moves.add([row + dir, col]);
        }
        // moves twice from initial pos
        if (row == 1 && !selected.iswhite || row == 6 && selected.iswhite) {
          if (isinBoard(row + 2 * dir, col) &&
              board[row + 2 * dir][col] == null &&
              board[row + dir][col] == null) {
            moves.add([row + 2 * dir, col]);
          }
        }
        // captures cross
        if (isinBoard(row + dir, col - 1) &&
            board[row + dir][col - 1] != null &&
            board[row + dir][col - 1]!.iswhite) {
          moves.add([row + dir, col - 1]);
        }
        if (isinBoard(row + dir, col + 1) &&
            board[row + dir][col + 1] != null &&
            board[row + dir][col + 1]!.iswhite) {
          moves.add([row + dir, col + 1]);
        }
        // if (isinBoard(row + dir, col - 1) &&
        //     board[row + dir][col - 1] != null &&
        //     board[row + dir][col - 1]!.iswhite) {
        //   moves.add([row + dir, col - 1]);
        // }
        // if (isinBoard(row + dir, col + 1) &&
        //     board[row + dir][col + 1] != null &&
        //     board[row + dir][col + 1]!.iswhite) {
        //   moves.add([row + dir, col + 1]);
        // }

        // empass special rule

        break;
      case PieceType.rook:
        // moves vertical and horizontal
        var directions = [
          [-1, 0],
          [1, 0],
          [0, -1],
          [0, 1]
        ];
        for (var dirs in directions) {}
        break;
      case PieceType.knight:
        //if it moves 2 square verical the moves one horizontal both sides and vice-versa
        break;
      case PieceType.bishop:
        // moves in cross
        break;
      case PieceType.king:
        //moves in all dir. but only one at a time
        // special move castle
        break;
      case PieceType.queen:
        //moves all dir.
        break;
    }
    return moves;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 8,
        ),
        itemCount: 8 * 8,
        itemBuilder: (BuildContext context, int index) {
          int row = index ~/ 8;
          int col = index % 8;
          bool isSelected = selectedrow == row && selectedcol == col;
          bool isvalid = false;
          for (var pos in validmove) {
            if (pos[0] == row && pos[1] == col) {
              isvalid = true;
            }
          }
          return Center(
            child: Square(
              onTap: () => pieceInteraction(row, col),
              isValidmove: isvalid,
              iswhite: iswhite(index),
              piece: board[row][col],
              isSelected: isSelected,
            ),
          );
        },
      ),
    );
  }
}
