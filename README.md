# アプリ名
[![Image from Gyazo](https://i.gyazo.com/459eacfa48ca888aedb607cf4335e493.png)](https://gyazo.com/459eacfa48ca888aedb607cf4335e493)

# アプリケーション概要
このアプリではアーチェリーの練習日誌を残すSNS機能が搭載されています。練習日誌では点数の記録だけでなく天候や場所などの細かい情報まで残すことができます。

# URL
https://score-sheet-122.herokuapp.com/

# テスト用アカウント
- Basic認証ID：
admin
- Basic認証パスワード：
2222

- メールアドレス：
ema@ema
- パスワード：
abc123

# 目指した課題解決
- アーチェリークラブに所属しなくなった（＝一緒に練習する人がいなくなった）ことで練習のモチベーションが下がり、アーチェリーを辞めてしまう社会人が多いことが問題でした。アーチェリーの練習日誌を共有できるSNS機能を搭載することで個人アーチャーとなった社会人アーチャーのモチベーションアップにつなげ、アーチェリーの競技人口を増やしたいと考えました。

- ほぼ全てのアーチャーが使うアーチェリーノートは基本紙ベースなので、整理がしにくい、専用のノートは値段が高い、雨天時破れてしまうなどの問題がありました。アーチェリーノートのペーパーレス化をはかり使いやすいスコアシートアプリを作成することを目指しました。

# 洗い出した要件
- ユーザー情報を弓具情報まで登録できるようにする
- 練習日誌を投稿し他人の練習日誌を閲覧できる
- 練習日誌はルールに則ったスコア入力ができる

# 利用方法および実装機能
## トップページ
- Basic認証をクリア後トップページに移ります。トップページではJQueryを利用して動きを付けています。
[![Image from Gyazo](https://i.gyazo.com/5f9ca18b5599f88c83d7933c2fc0e5ba.gif)](https://gyazo.com/5f9ca18b5599f88c83d7933c2fc0e5ba)

## ユーザー関係

### 新規登録
- トップページから新規登録画面に遷移します。
[![Image from Gyazo](https://i.gyazo.com/75f8ab734984e93f2025d45a3599bef5.gif)](https://gyazo.com/75f8ab734984e93f2025d45a3599bef5)

- 必要事項を記入して新規登録すれば完了です。
[![Image from Gyazo](https://i.gyazo.com/d9e33ebd3a576ca03d2e179709b2af78.gif)](https://gyazo.com/d9e33ebd3a576ca03d2e179709b2af78)

### ログアウト
- またログアウトは以下のようにログアウトボタンで完了します。
[![Image from Gyazo](https://i.gyazo.com/1222846d1c96e077debebd38cfe40254.gif)](https://gyazo.com/1222846d1c96e077debebd38cfe40254)

### ログイン
- ログインはまずトップページからログイン画面に遷移します。
[![Image from Gyazo](https://i.gyazo.com/e2c51e52ed32bdbf97f311b68188b682.gif)](https://gyazo.com/e2c51e52ed32bdbf97f311b68188b682)

- 必要事項を記入すればログインできます。
[![Image from Gyazo](https://i.gyazo.com/9199394e7a0589a3e8149b4b02daed73.gif)](https://gyazo.com/9199394e7a0589a3e8149b4b02daed73)

### ユーザー詳細情報
- 画面右上のログイン中ユーザーの名前をクリックするとそのユーザーの詳細情報を確認できます。ユーザー情報画面ではそのユーザーのプロフィール以外にそのユーザーの過去の練習歴を確認できます。
[![Image from Gyazo](https://i.gyazo.com/fcbc94953814f76f166421542e0626ba.gif)](https://gyazo.com/fcbc94953814f76f166421542e0626ba)

- ログイン中のユーザーとは別のユーザー情報も確認できます。その際はそのユーザー情報は編集できないように編集ボタンは表示されません。
[![Image from Gyazo](https://i.gyazo.com/61e30683c76f97df22be2704b6a8489d.gif)](https://gyazo.com/61e30683c76f97df22be2704b6a8489d)

- ログインしていないユーザーもユーザー情報を閲覧することができます。その際はそのユーザー情報は編集できないように編集ボタンは表示されません。
[![Image from Gyazo](https://i.gyazo.com/d7427b7cf1f84f240b6ee9b51e665915.gif)](https://gyazo.com/d7427b7cf1f84f240b6ee9b51e665915)

### ユーザー情報編集機能
- ユーザー詳細表示画面からユーザー編集画面に遷移します。
[![Image from Gyazo](https://i.gyazo.com/19d3954133212ab8249113d05dc3f22a.gif)](https://gyazo.com/19d3954133212ab8249113d05dc3f22a)

- 必要事項を記入し、ユーザー情報を更新します。
[![Image from Gyazo](https://i.gyazo.com/65870435b190f5871de76a85f990163e.gif)](https://gyazo.com/65870435b190f5871de76a85f990163e)

## 練習日誌
### 練習日誌投稿
- トップページの「練習開始！」ボタンから練習日誌を投稿できます。
[![Image from Gyazo](https://i.gyazo.com/5aac25d3d8796881ac07d1f8003b2702.gif)](https://gyazo.com/5aac25d3d8796881ac07d1f8003b2702)

- 必要事項を入力し、日誌を投稿します。
[![Image from Gyazo](https://i.gyazo.com/656e4de3838fbbac797e9926effc509a.gif)](https://gyazo.com/656e4de3838fbbac797e9926effc509a)

### 練習日誌詳細表示
- 練習日誌はトップページに一覧で表示されています。練習日誌をクリックすると詳細表示画面に移ります。
[![Image from Gyazo](https://i.gyazo.com/6e22bf71f9d2fc6b7706ae2b626ddeb6.gif)](https://gyazo.com/6e22bf71f9d2fc6b7706ae2b626ddeb6)

- 練習日誌はログイン中のユーザー以外のユーザーも詳細を見ることができます。
[![Image from Gyazo](https://i.gyazo.com/5917b0884b927da65c53cd9fdf7eeb71.gif)](https://gyazo.com/5917b0884b927da65c53cd9fdf7eeb71)

- 練習日誌はログインしていないユーザーも見ることができます。
[![Image from Gyazo](https://i.gyazo.com/e5f52ce84a717ac4dd5085a1899086fa.gif)](https://gyazo.com/e5f52ce84a717ac4dd5085a1899086fa)

### 練習日誌編集
- 練習終了後は総括も兼ねて練習日誌を編集します。詳細画面から編集画面に遷移します。
[![Image from Gyazo](https://i.gyazo.com/ac29e33cb6acb31df5d6144db3a6f782.gif)](https://gyazo.com/ac29e33cb6acb31df5d6144db3a6f782)

- 必要事項を入力して編集を完了します。
[![Image from Gyazo](https://i.gyazo.com/5646931f8f870b1eecb85cd5488d1382.gif)](https://gyazo.com/5646931f8f870b1eecb85cd5488d1382)

### 練習日誌削除機能
- 投稿したユーザーのみ練習日誌を削除できます。詳細画面の削除ボタンで削除します。
[![Image from Gyazo](https://i.gyazo.com/8297de6fd7bb8c3fa23f07ead0049b57.gif)](https://gyazo.com/8297de6fd7bb8c3fa23f07ead0049b57)


## 練習内容
### 練習内容記録機能
- 練習内容を日誌の詳細表示画面から投稿することができます。
[![Image from Gyazo](https://i.gyazo.com/24c62fb281f48202fb2f18d96fd2bc54.gif)](https://gyazo.com/24c62fb281f48202fb2f18d96fd2bc54)

- 練習内容の必要事項を記入して投稿します。
[![Image from Gyazo](https://i.gyazo.com/26a9c3e0d4da4eb9b75c86f295a2dce0.gif)](https://gyazo.com/26a9c3e0d4da4eb9b75c86f295a2dce0)

### 練習内容詳細表示
- 練習日誌の詳細表示画面にその日の練習内容が表示されるので、それをクリックするとその内容の詳細が表示されます。
[![Image from Gyazo](https://i.gyazo.com/f0e88beada53e1ba873022bb5791043b.gif)](https://gyazo.com/f0e88beada53e1ba873022bb5791043b)

### 練習内容編集機能
- 投稿したユーザーのみ練習内容の編集をすることができます。そのメニューが終われば内容を編集します。
[![Image from Gyazo](https://i.gyazo.com/c57b76046393f28abd688aea365e3bba.gif)](https://gyazo.com/c57b76046393f28abd688aea365e3bba)

- 編集したい内容を記入したら編集ボタンを押して編集完了です。
[![Image from Gyazo](https://i.gyazo.com/d86ca5ef2da10f9f0bea5bb0c6d35194.gif)](https://gyazo.com/d86ca5ef2da10f9f0bea5bb0c6d35194)

### 練習内容削除機能
- 投稿したユーザーのみ練習内容を削除できます。間違えて上げてしまった練習は詳細画面の削除ボタンを押せば削除できます。
[![Image from Gyazo](https://i.gyazo.com/cd24f89770f6ff89b3b2447c8d1e14b1.gif)](https://gyazo.com/cd24f89770f6ff89b3b2447c8d1e14b1)

## スコア記録
- 得点入力はプルダウンから点数を選択し、合計を入力することで表示されます。
[![Image from Gyazo](https://i.gyazo.com/2839d7a569ce8f5d64ecaace8fcc8e3d.gif)](https://gyazo.com/2839d7a569ce8f5d64ecaace8fcc8e3d)

# 実装予定の機能
- 得点の自動計算機能
- コメント機能
- 友達登録機能
- 自己ベスト管理機能
- アーチェリー場情報投稿機能
- アーチェリーショップ情報投稿機能

# テーブル設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| nickname           | string  | null: false               |
| name               | string  | null: false               |
| age                | integer |                           |
| gender_id          | integer |                           |
| handle             | string  |                           |
| rim                | string  |                           |
| bowstring          | string  |                           |
| arrow              | string  |                           |
| other              | text    |                           |
| introduction       | text    |                           |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |


### Association

- has_many :diaries
- has_many :exercises
- has_many :scores
- has_mane :comments

## diaries テーブル

| Column             | Type            | Options                        |
| ------------------ | --------------- | ------------------------------ |
| date               | date            | null: false                    |
| place              | string          | null: false                    |
| event              | string          |                                |
| total_memo         | text            |                                |
| user               | references      | null: false, foreign_key: true |

### Association

- has_many :exercises
- has_many :comments
- has_many :scores
- belongs_to :user

## exercises テーブル

| Column             | Type            | Options                        |
| ------------------ | --------------- | ------------------------------ |
| weather_id         | integer         | null: false                    |
| distance_id        | integer         | null: false                    |
| sight              | integer         |                                |
| memo               | text            |                                |
| user               | references      | null: false, foreign_key: true |
| diary              | references      | null: false, foreign_key: true |


### Association

- belongs_to :user
- belongs_to :diary
- has_many :scores


## scores テーブル

| Column             | Type            | Options                        |
| ------------------ | --------------- | ------------------------------ |
| end_id             | integer         | null: false                    |
| first_id           | integer         | null: false                    |
| second_id          | integer         | null: false                    |
| third_id           | integer         | null: false                    |
| fourth_id          | integer         | null: false                    |
| fifth_id           | integer         | null: false                    |
| sixth_id           | integer         | null: false                    |
| total              | integer         | null: false                    |
| ground_total       | integer         | null: false                    |
| user               | references      | null: false, foreign_key: true |
| diary              | references      | null: false, foreign_key: true |
| exercise           | references      | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :diary
- belongs_to :exercise

## comments テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| reaction_id  | integer    | null: false,                   |
| text         | text       | null: false,                   |
| user         | references | null: false, foreign_key: true |
| dairy        | references | null: false, foreign_key: true |

### Association

- belongs_to :diary
- belongs_to :user

## relationship テーブル


# ER図
[![Image from Gyazo](https://i.gyazo.com/1d908d745ca412c2e01c438bb1ffbdf2.png)](https://gyazo.com/1d908d745ca412c2e01c438bb1ffbdf2)

# 使用技術
## バックエンド
- Ruby 2.6.5
- Ruby on Rails 6.0.4

## フロントエンド
- HTML
- CSS
- JavaScript

## データベース
- MySQL

## インフラ
- Sequel Pro(MySQL)

## Webサーバー
- Heroku

## ソース管理
- GitHub, GitHubDesktop

## テスト
- rspec

## エディタ
- VSCode

