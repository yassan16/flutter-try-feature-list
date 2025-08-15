# macOS での FVM インストール（Homebrew版） – 図解入り
概要フロー
```
Homebrew
   │
   ▼
brew tap leoafarias/fvm
   │
   ▼
brew install fvm
   │
   ▼
fvm install <Flutterバージョン>
   │
   ▼
fvm use <Flutterバージョン> --save  (プロジェクト単位)
   │
   ▼
fvm flutter run / fvm flutter build
```
>注意: dart pub global activate fvm はここでは使用しない。
>Dart バージョン依存で問題が出ることがあるため、Homebrew 版を推奨。

### コマンドごとの詳細
## 1. Homebrew の更新
```
brew update
```
* Homebrew の最新リポジトリ情報を取得
* パッケージ情報も更新され、タップの追加やインストールが安定

## 2. FVM タップの追加
```
brew tap leoafarias/fvm
```
* FVM は Homebrew 公式にはないため、このタップを追加
* brew install fvm が認識されるようになる

## 3. FVM のインストール
```
brew install fvm
```
* Homebrew 経由で FVM をインストール
* 実行ファイルのパス: /opt/homebrew/bin/fvm (Apple Silicon) または /usr/local/bin/fvm (Intel)

## 4. インストール確認
```
fvm --version
```
* FVM が正しくインストールされたか確認
* バージョン番号が表示されれば OK

## 5. Flutter バージョンのインストール
```
fvm install 3.29.3
```
* プロジェクトで使用する Flutter バージョンを取得
* .fvm/ ディレクトリに格納される

6. プロジェクトでバージョン指定
```
cd <プロジェクトのルート>
fvm use 3.29.3 --save
```
* プロジェクトごとに Flutter バージョンを固定
* .fvm/fvm_config.json に記録され、再入力不要

## 7. Flutter コマンドの実行
```
fvm flutter --version
fvm flutter run
```
* FVM 経由で Flutter を実行
* flutter コマンドを直接叩くのではなく、必ず fvm flutter を使用

## 8. VSCode での設定
```
{
  "dart.flutterSdkPath": ".fvm/flutter_sdk"
}
```
* プロジェクトルートの .vscode/settings.json に設定
* VSCode 上でも FVM 指定のバージョンが利用可能

## まとめフロー（図解イメージ）
```css
[Homebrew] → [FVM タップ追加] → [FVM インストール] → [Flutter バージョン取得] → [プロジェクトで固定] → [fvm flutter 実行]
```
* Homebrew 版は Dart バージョンに依存しない
* dart pub global activate fvm とは別の管理方法
* プロジェクト単位で Flutter バージョンを固定でき、VSCode とも連携可能


## 参考サイト
* [Flutterのバージョンをプロジェクト毎に管理してみた](https://dev.classmethod.jp/articles/flutter-fvm/)

