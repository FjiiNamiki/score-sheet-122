# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

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
| exercise           | references      | null: false, foreign_key: true |

### Association

- belongs_to :user
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

