# memoapp

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
# memo-app
setStateとSQWQLiteだけを使ったシンプルなメモアプリ
- メモぼタイトルとメモのテキスト、日時を保存する
- メモの追加。削除、編集を可能にする
-  DBはSQliteを使用してデータを永続化できるようにする
# いつか実装したい機能
- ダークモード
- ListView.builderを使った並び替え機能
- 入力するダイアログボックスを何とかしたい
- 追加したメモを編集できる機能をつけたい
- タブレットレイアウトに最適化させる
# 実行方法
git cloneでそのまま実行できるはず。
# 使用したパッケージ
- SQlite
- flutter_slidable ^3.1.2
- 状態管理はsetStateのみ(今の所)