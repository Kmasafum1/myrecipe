# Myrecipe
自宅で自炊をする人が、料理をする上で食材・調理時間・調理手順を投稿することで料理内容を閲覧できる。

# 制作背景
新型コロナウイルスの感染拡大を受け、外出自粛が続いています。
そんな中でおうち時間を充実させるために
「ステイホーム」にぴったりの今まで知らなかった食材の活用法を教えてくれて、
料理の幅が広げられます。ゆっくり料理する時間が取れない、または料理のアイディアが浮かばない、料理が得意でないという人に対してこのようなサービスで課題解決をしたいと考えております。

# 工夫したところ
一番工夫したところはいいね機能のajax実装です。
部分テンプレートを作成し、部分的に更新する場所を
記述して非同期化させるのに一苦労しました。

 
## 主要画面のキャプチャ・簡単な説明
 
-トップ画面
![スクリーンショット 2020-08-30 15 40 51](https://user-images.githubusercontent.com/67785220/91652986-3964d880-ead7-11ea-9b15-a5bd8171583c.png)
 
-新規登録画面
![スクリーンショット 2020-08-30 15 42 22](https://user-images.githubusercontent.com/67785220/91653018-729d4880-ead7-11ea-93a3-c08cf8c8506e.png)

-ログイン画面
![スクリーンショット 2020-08-30 15 43 31](https://user-images.githubusercontent.com/67785220/91653033-93fe3480-ead7-11ea-930e-e79b498b1a73.png)

-レシピ投稿画面
![スクリーンショット 2020-08-30 15 45 49](https://user-images.githubusercontent.com/67785220/91653061-e63f5580-ead7-11ea-9a22-da21c7f4a477.png)

-投稿一覧画面
![スクリーンショット 2020-08-30 15 46 47](https://user-images.githubusercontent.com/67785220/91653073-0b33c880-ead8-11ea-8ccb-d2e987c20098.png)

 
## 今後実装してみたい機能
 
- インクリメンタルサーチ機能
 
🌐 App URL
https://recipelabo.herokuapp.com/

-テストアカウント

メールアドレス：sample@test.com
パスワード：ssss1111

-動作確認方法

Chromeの最新版を利用してアクセスしてください。
ただしデプロイ等で接続できないタイミングもございます。
その際は少し時間をおいてから接続してください。
接続先およびログイン情報については、上記の通りです。
同時に複数の方がログインしている場合に、ログインできない可能性があります。


## ツール
 
1. ruby
2. bootstrap

 
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

Association
has_many :recipes
has_many :likes

## recipesテーブル

|Column|Type|Options|
|------|----|-------|
|title|string|
|body|text|
|user_id|integer|

Association
-has_many :likes

## likesテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|
|recipe_id|integer|

Association
-belongs_to :user
-belongs_to :recipe
