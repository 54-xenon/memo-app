import 'package:flutter/material.dart';
import 'package:memoapp/util/daialog_box.dart';
import 'package:memoapp/util/memo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    // タイトルのコントローラー
final _titleController = TextEditingController();
// メモのコントローラー
final _contentController = TextEditingController();
  // memolist 
  List memoList = [
    // memoName
    // memoContent
  ];

  // saveNewmemo
  void saveNewTask() {
    // setStateを使った状態管理
    setState(() {
      memoList.add([_titleController.text, _contentController.text]);
      // コントローラーをクリアする
      _titleController.clear();
      _contentController.clear();
    });
    Navigator.of(context).pop();
  }

  // create new mwmo
  void createNewMemo() {
    showDialog(
      context: context,
      builder: (context) {
        return DaialogBox(
          titleController: _titleController,
          contentController: _contentController,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      }
    );
  }

  // delete memo
  void deleteMemo(int index) {
    setState(() {
      memoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Memo"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewMemo,
        backgroundColor: Colors.yellow[300],
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: memoList.length,
        itemBuilder: (context, index) {
          return MemoTile(
            memoName: memoList[index][0],
            memoContents: memoList[index][1],
            deleteMemo: (context) => deleteMemo(index),
          );
        },
      ),
    );
  }
}