# assets/images
このフォルダには画像やsvgのファイルを格納してください。

フォントを追加した後は`flutter gen`で生成するために以下の手順行ってください。

1. pubspec.yamlのassetsにこのファイルまでのパスを追加する
2. 以下のコマンドを実行する
```zsh
dart run build_runner build --delete-conflicting-outputs
```

1. `lib/gen/`にアセットを抽象化したファイルが生成されています。