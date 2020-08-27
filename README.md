# README

# ツール・ライブラリの名前
 
recipelabo
 
## 簡単な説明
 
recipelaboとは自分オリジナルのレシピを公開して情報シェアをするWebアプリケーションです。
 
***デモ***
 
<!-- ![デモ](https://image-url.gif) -->
 
## 機能
 
- devise機能
- いいね機能
- レシピ投稿機能
- レシピ一覧表示機能
 
## 使い方
 
1. 使い方
2. 使い方
3. 使い方
 
## インストール
 
```
$ git clone https://github.com/TomoakiTANAKA/awesome-tool
$ cd awesome-tool
$ sh setup.sh
$ ~do anything~
```
 
## テスト
 
1. 使い方
2. 使い方
3. 使い方
 
## デプロイ
 
1. heroku
2. 
3. 

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|
|email|string|null: false, unique: true|
|password|string|null: false|

## recipesテーブル

|Column|Type|Options|
|------|----|-------|
|title|string|
|body|text|
|user_id|integer|

## likesテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|
|recipe_id|integer|
