import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MemoTile extends StatelessWidget {
  final String memoName;
  final dynamic memoContents;
  final bool memoCompleted;
  Function(BuildContext) deleteMemo;

  MemoTile({
    super.key,
    required this.memoName,
    required this.memoContents,
    required this.memoCompleted,
    required this.deleteMemo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15,left: 15, right: 15),
      child: Slidable(
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
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