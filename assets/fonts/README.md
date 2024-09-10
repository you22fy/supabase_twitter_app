# assets/fonts
このフォルダにはフォントのファイルを格納してください。
フォントのファイルとは、.ttf や .otf などの拡張子を持つファイルです。

フォントを追加した後は`flutter gen`で生成するために以下の手順行ってください。

1. pubspec.yamlのfontsにこのファイルまでのパスを追加する
2. 以下のコマンドを実行する
```zsh
dart run build_runner build --delete-conflicting-outputs
```

3. `lib/gen/`にフォントを抽象化したファイルが生成されています。