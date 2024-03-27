# flutter_app

[![Run Tests](https://github.com/aoskainer/flutter_app/actions/workflows/test.yml/badge.svg)](https://github.com/aoskainer/flutter_app/actions/workflows/test.yml)
[![codecov](https://codecov.io/gh/aoskainer/flutter_app/graph/badge.svg?token=Ta1vRvM2qe)](https://codecov.io/gh/aoskainer/flutter_app)

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Memo

### build_runnerの使い方

```bash
# 開発時はこっちで。
$ dart run build_runner watch
# 一応こっちもあるけどそこまで出番はなさそう。
$ dart run build_runner build
```

### パッケージ名の変更方法

Androidの場合
```bash
$ flutter pub add -d change_app_package_name
$ flutter pub run change_app_package_name:main com.example.new_package_name
```

iOSの場合
```bash
$ xed ~/path/to/flutter_app/ios
```
でXcodeを開く。<br>
次に左側のバーの`Runner`をクリックしてRunner設定を開く。<br>
`TARGET > Runner`, `TARGET > RunnerTests`をそれぞれ開いて`Bundle Identifier`を変更する。
