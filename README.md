# アプリ名
[![Image from Gyazo](https://i.gyazo.com/459eacfa48ca888aedb607cf4335e493.png)](https://gyazo.com/459eacfa48ca888aedb607cf4335e493)

# アプリケーション概要
このアプリではアーチェリーの練習日誌を残すSNS機能が搭載されています。練習日誌では点数の記録だけでなく天候や場所などの細かい情報まで残すことができます。

# URL
https://score-sheet-122.herokuapp.com/

# テスト用アカウント
- Basic認証ID
admin
- Basic認証パスワード
2222

- メールアドレス
ema@ema
- パスワード
abc123

# 利用方法

## トップページ
Basic認証をクリア後トップページに移ります。
トップページではJQueryを利用して動きを付けています。
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

### ユーザー情報編集機能
-



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

