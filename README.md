# README

## アプリ名 
# De速

## 概要
# 


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