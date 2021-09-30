# アプリ名
[![Image from Gyazo](https://i.gyazo.com/459eacfa48ca888aedb607cf4335e493.png)](https://gyazo.com/459eacfa48ca888aedb607cf4335e493)

# アプリケーション概要
このアプリではアーチェリーの練習日誌を残すSNS機能が搭載されています。練習日誌では点数の記録だけでなく天候や場所などの細かい情報まで残すことができます。

# URL
https://score-sheet-122.herokuapp.com/


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

