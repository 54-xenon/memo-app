import 'package:flutter/material.dart';
import 'package:memoapp/pages/add_page.dart';
import 'package:memoapp/util/memo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // memo list
  List memoList = [
    // memoName, memoContent, memoCompleted
    ["first memo",
     "メモのタイトルと内容を表示する。メモは今の所テキストベース、今後いろいろ機能を拡張していいきたい",
     false],
    ["first memo",
     "メモのタイトルと内容を表示する。メモは今の所テキストベース、今後いろいろ機能を拡張していいきたい",
     false],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Memo"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddPage(
            onSave: () {},
            onCancel: () => Navigator.of(context).pop(),
          )));
        },
        backgroundColor: Colors.yellow[300],
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: memoList.length,
        itemBuilder: (context, index) {
          return MemoTile(
            memoName: memoList[index][0],
            memoContents: memoList[index][1],
            memoCompleted: memoList[index][2],
          );
        },
      ),
    );
  }
}