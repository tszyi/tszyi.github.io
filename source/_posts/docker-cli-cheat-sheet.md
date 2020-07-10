---
title: Docker 指令速查表
comments: true
date: 2020-07-09 07:42:31
updated: 2020-07-09 07:42:31
categories: [Virtualization, Docker]
tags: [Docker, "cheat sheet"]
customurltitle: docker-commands-cheat-sheet
---
## Image

```shell
# 列出映像檔
$ docker images

# 下載映像檔
$ docker pull <映像檔>

# 上傳映像檔
$ docker push <映像檔>

# 修改映像檔標籤
# 新舊映像檔都指向同份 image id
$ docker tag <舊映像檔> <新映像檔>

# 刪除映像檔
# 若有多個映像檔指向同份 image id，則為 Untagged 
$ docker rmi <映像檔>

# 以 Dockerfile 建立映像檔
# --no-cache 表示不使用已存在的 layer
$ docker build -t <映像檔> . [--no-cache]

# 打包成 tar
# 無網路或資安考量下使用
$ docker save -o <tar檔> <映像檔>

# 載入 tar
# 無網路或資安考量下使用
$ docker laod -i <tar檔>
```

<!-- more -->

## Container

```shell
# 列出所有容器
$ docker ps -a

# 啟動容器
# 若時區不正確，可能是基底映像檔沒裝 timezone
$ docker run -d -e 'TZ=Asia/Taipei' -p <主機port:容器port> -v <主機絕對路徑:容器絕對路徑> --name <容器> <映像檔>

# 查看容器輸出
$ docker logs <container>

# 執行指令
$ docker exec <容器> sh -c "<指令1>;[指令2...]"

# 進入容器
# 開啟容器新的 shell 實例
# 若有 /bin/bash 則用之取代 /bin/sh
$ docker exec -it <容器> /bin/sh

# 刪除容器
$ docker rm -f <容器>

# 啟動某個已停止的容器
$ docker start <容器>

# 停止某個運行中的容器
$ docker stop <容器>

# 重啟容器
$ docker restart <container>

# 重命名容器
$ docker rename <舊容器> <新容器>
```

## Volume

```shell
# 列出所有 volume
$ docker volume ls
```