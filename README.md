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
