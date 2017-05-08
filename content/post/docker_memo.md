+++
date = "2017-04-28T14:15:05+09:00"
title = "dockerについてのメモ"
categories = ["technology"]
tags = ["docker"]
thumbnail = "images/group5622-0.png"
+++
---
# dockerについてのメモ
---

## dockerのイメージ作成
```
docker build --rm -q -f Dockerfile -t my-docker .
```

## dockerのイメージ一覧
```
docker images
```

## docker起動
```
docker run -it <image id> /bin/bash
```

## 起動しているdockerに接続
```
docker exec -it <container id> /bin/bash
```

## dockerのイメージ削除
```
docker rmi <image id>
```

## dockerのコンテナー削除
```
docker rm <CONTAINER ID>
```

## ラベルがついていないdockerのイメージを削除
```
alias docker_clean_images='docker rmi $(docker images -a --filter=dangling=true -q)'
alias docker_clean_ps='docker rm $(docker ps --filter=status=exited --filter=status=created -q)'
docker kill $(docker ps -q)
docker_clean_ps
docker_clean_images
```
