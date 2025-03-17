import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MemoTile extends StatelessWidget {
  final String memoName;
  final dynamic memoContents;
  final bool memoCompleted;
  Function(BuildContext) deleteMemo;
  VoidCallback archiveMemo;

  MemoTile({
    super.key,
    required this.memoName,
    required this.memoContents,
    required this.memoCompleted,
    required this.deleteMemo,
    required this.archiveMemo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15,left: 15, right: 15),
      // delete memoTile
      child: Slidable(
        startActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: deleteMemo,
              backgroundColor: Colors.red,
              borderRadius: BorderRadius.circular(12),
              icon: Icons.delete,
              label: "delete",
            )
          ],
        ),
        // archive memoTile
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: (context) => archiveMemo,
              backgroundColor: Colors.green,
              borderRadius: BorderRadius.circular(12),
              icon: Icons.history,
              label: "Archive",
            )
          ],
        ),
        child: Container(
          width: 400,
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            // ここを変えて状態によってメモの色を変えるようにする
            color: Colors.yellow[300],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(memoName,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(memoContents),
            ],
          ),
        ),
      ),
    );
  }
}