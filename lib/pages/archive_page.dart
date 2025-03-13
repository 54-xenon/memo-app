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
            memoName: "完了済みのメモ",
            memoContents: "役目を終えてけど、まだまだ読み返すことがあるメモな度はここに移動ささsる",
            memoCompleted: true,
          ),
        ],
      ),
    );
  }
}