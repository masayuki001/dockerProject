# dockerProject
## Docker Desktop for Macを入れる（推奨）
インストーラーをダウンロードする
インストールは次のサイトで Docker for Mac インストーラーをダウンロードしてインストールしていくことができます。

https://www.docker.com/products/docker-desktop

- インストールしたか確認方法
```
$ docker version
```

## branchを落とす
- 任意のディレクトリに移動し、Cloneする
```
$ cd ~/Develop/
$ git clone git@github.com:masayuki001/dockerProject.git
```

## Docker イメージ作成
- プロジェクトのディレクトリに移動し、buildを実行
```
$ cd dockerProject/
$ docker-compose up -d --build
```

## Railsコンテナ
- コンテナ接続方法
```
$ docker exec -i -t dockerproject_rails5_1 bash
```
- URL
  - http://localhost:3000/
- version

| title | version | other |
|:-----------|------------:|:------------:|
| Rails      |       5.2.6 |          |
| Ruby       |      2.6.3  |        |
  
## Laravelコンテナ
- コンテナ接続方法
```
$ docker exec -i -t dockerproject_php_1 bash
```
- URL
  - http://localhost:8000/
- version

| title | version | other |
|:-----------|------------:|:------------:|
| Laravel      |       7.30.4 |          |
| PHP       |      7.2.34  |        |

## DBコンテナ
- コンテナ接続方法
```
$ docker exec -i -t dockerproject_database_1 bash
```
- version

| title | version | other |
|:-----------|------------:|:------------:|
| mysql      |       8.0.14 |          |
