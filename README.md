## Dockerについて
Dockerは仮想コンテナを立てることができるツールです。
以下の記事がわかりやすいかと思います。
[わかりやすい記事](https://qiita.com/miyasakura_/items/87ccb6d4a52d4a00a999)

以下の環境構築には[Docker for Mac](https://www.docker.com/products/docker-desktop)が必要です。
Windowsの人は[Docker for Windows](https://www.docker.com/products/docker-desktop)からインストールしてください。

## 環境構築方法

### 1. リポジトリをクローンする

```
$ git clone https://github.com/To22-Corporation/geektown.git
$ cd line-management
```

### 2. 環境ファイルの用意

```
$ cp .env.example .env
```

### 3. 開発環境の起動

```
# 以下geektownディレクトリ下で

# imageを作成
docker-compose build

# dockerを立ち上げる
docker-compose up -d

# コンテナにアクセスする
docker-compose run --rm app bash

# db作成
rails db:create
# マイグレーション実行
rails db:migrate
# シード実行
rails db:seed

exit
```

あとは[http://localhost](http://localhost)にアクセスしてアプリケーションが起動していれば完了です。

### 4. 開発環境の終了方法

```
$ docker-compose stop
```

## その他のコマンド

### Docker

```
# コンテナの起動
docker-compose up
# コンテナの停止
docker-compose stop
# 新しくappコンテナを起動してアクセスし、bashを起動する。この時dbコンテナと通信することでmysqlとのやりとりもできる。
docker-compose run --rm app bash
# すでに起動しているappコンテナにアクセスし、bashを起動する。この時dbコンテナと通信することでmysqlとのやりとりもできる。
docker exec -it geektown_app_1 /bin/bash
```

### erd
railsがマイグレーションを実行する度にスキーマからER図をpdfで出力してくれます。
以下のコマンドで確認できます。
```
open erd.pdf
```
