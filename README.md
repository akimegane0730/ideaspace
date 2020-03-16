# README

### アプリ名 
## De速
<img width="1440" alt="スクリーンショット 2020-03-02 12 30 39" src="https://user-images.githubusercontent.com/58383159/76726462-8ad11380-6794-11ea-8513-7dde83c01f5f.png">

### 概要
## 横浜DeNAベイスターズを応援するためのアプリです。その日にあった試合の感想を投稿できるだけではなく今日のMVPや球場、対戦相手も投稿できるためあとで見返したときに思い出しやすく工夫しました。

### アプリURI
# https://tranquil-garden-91174.herokuapp.com/

### 使用技術
## HTML CSS Haml Scss JavaScript jQuery Ruby Ruby on Rails Heroku 

### 課題や今後実装したい機能
## その日の試合ごとにMVPを決められるようになっているので、日時を指定するとユーザーが誰をMVPとして選んだのかすぐわかるようなグラフ機能

## ユーザー同士でダイレクトメッセージを送れるような機能

### 工夫したポイント
## お問い合わせの項目にjQueryを用いたモーダルwindowの実装。
<img width="1439" alt="スクリーンショット 2020-03-16 14 46 21" src="https://user-images.githubusercontent.com/58383159/76726653-23679380-6795-11ea-96d6-0aef26caca33.png">

## 投稿へのコメント機能の実装。
## active hashを用いた情報の管理
<img width="470" alt="スクリーンショット 2020-01-07 12 09 22" src="https://user-images.githubusercontent.com/58383159/76726806-9cff8180-6795-11ea-9869-ec8bbd121e5b.png">

## javascriptを用いた画像投稿時にピュレビュー表示


# DB設計

## users テーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|email|string|unique:true, null:false|
|password|string|null:false|
|re_password|string|null:false|

### Association
- has_many :posts

## posts テーブル
|Column|Type|Options|
|------|----|-------|
|content|text|null:false|
|user_id|reference|null:false|
|place_id|integer|null:false|
|player_id|integer|null:false|

### Association
- has_many :images

## imagesテーブル

|Column|Type|Options|
|------|----|-------|
|post_id|references|foreign_key:true|
|image|text||

### Association
- belongs_to :post