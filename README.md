# README

### アプリ名 
# De速

### 概要
# 横浜DeNAベイスターズを応援するためのアプリです。その日にあった試合の感想を投稿できるだけではなく今日のMVPや球場、対戦相手も投稿できるためあとで見返したときに思い出しやすく工夫しました。

### 制作背景
# 

### 使用技術
# HTML CSS Haml Scss JavaScript jQuery Ruby Ruby on Rails Heroku 

### 課題や今後実装したい機能
# その日の試合ごとにMVPを決められるようになっているので、日時を指定するとユーザーが誰をMVPとして選んだのかすぐわかるようなグラフ機能

# ユーザー同士でダイレクトメッセージを送れるような機能

### 工夫したポイント
# お問い合わせの項目にjQueryを用いたモーダルwindowの実装。
# 投稿へのコメント機能の実装。
# active hashを用いた情報の管理
# javascriptを用いた画像投稿時にピュレビュー表示


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