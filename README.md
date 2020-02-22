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

### Association
- has_many :images

## imagesテーブル

|Column|Type|Options|
|------|----|-------|
|post_id|references|foreign_key:true|
|image|text||

### Association
- belongs_to :post