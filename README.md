# hackathon_template_app

## パッケージ名の変更について
[こちらの記事](https://www.mochot.com/posts/flutter-project-package-name#androidmanifestxml-%E5%A4%89%E6%9B%B4)を参考にして変更を行う。

## Makefileについて
諸々のコマンドを`Makefile`にまとめています。
```
make help
```
でコマンドの一覧と説明を見ることができるので、そちらを参照してください。

## アノテーションコメント
開発中にコードにメタデータを付したい場合以下のものを基本的に使用しましょう。
[TODO: 以外のアノテーションコメントをまとめた](https://qiita.com/taka-kawa/items/673716d77795c937d422) の記事から引用しています。

[todo tree](https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.todo-tree)の拡張機能を入れておくと便利です。

|   記法    |                         意味                         |
| :-------: | :--------------------------------------------------: |
|   TODO:   |         あとで追加、修正するべき機能がある。         |
|  FIXME:   |        既知の不具合があるコード。修正が必要。        |
|   HACK:   | あまりきれいじゃないコード。リファクタリングが必要。 |
|   XXX:    |        危険！動くけどなぜうごくかわからない。        |
|  REVIEW:  |       意図した通りに動くか、見直す必要がある。       |
| OPTIMIZE: |        無駄が多く、ボトルネックになっている。        |
| CHANGED:  |            コードをどのように変更したか。            |
|   NOTE:   |          なぜ、こうなったという情報を残す。          |
| WARNING:  |                     注意が必要。                     |


## 多言語対応
`flutter_localizations`を利用して、多言語対応を行っています。
また、`lib/l10n/app_ja.arb`をベースとして、[auto_translator](https://pub.dev/packages/auto_translator)パッケージを利用した自動翻訳を採用します。

多言語対応手順は以下の通りです。
1. `translator_key`と言うファイルがプロジェクトルートにあることを確認します。
このファイルは以下のように記述してください。
```
{
    "deepl" : "ここにDeepLのAPIキーを入力する"
}
```

2. `lib/l10n/app_ja.arb`を編集する。
3. `dart dart run auto_translator` で自動翻訳を走らせる。
   1. 翻訳の対象ファイルを増やしたい場合は`l10n.yaml`の`translator`セクションに追加してください。
      1. 現在は英語・中国語・韓国語・フランス語に対応しています。

4. `flutter gen-l10n` で各言語のarbファイルから.dartのファイルを生成する。

## 画像・フォントの追加
`flutter_gen`を用いて画像・フォントを安全に追加する仕組みを導入しています。

画像およびフォントは`assets/images`および`assets/fonts`に配置してください。

`pubspec.yaml`を編集して、追加したものが管理対象に含まれるようにしてください。

```
flutter pub run build_runner build
```

を実行することで、`lib/gen`以下に生成されたファイルが保存されます。