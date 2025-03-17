import 'package:flutter/material.dart';
import 'package:memoapp/util/memo_tile.dart';

class ArchivePage extends StatelessWidget {
  const ArchivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Archive"),
      ),
      body: ListView(
        children: [
          MemoTile(
            memoName: "モックのメモ",
            memoContents: "モックのメモを作成している",
            memoCompleted: true,
            deleteMemo: (p0) {},
            archiveMemo: () {},
          ),
          MemoTile(
            memoName: "モックのメモ",
            memoContents: "モックのメモを作成している",
            memoCompleted: true,
            deleteMemo: (p0) {},
            archiveMemo: () {},
          ),
        ],
      ),
    );
  }
}