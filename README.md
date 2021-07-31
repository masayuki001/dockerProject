# dockerProject
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
