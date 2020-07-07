---
title: Hexo 初入門
date: 2020-07-06 11:34:38
updated: 2020-07-06 11:34:38
categories: ["Static Site Generators", Hexo]
tags: [Hexo]
customurltitle: hexo-helloworld
comments: true
---

筆記一下

## 環境準備

```shell
# 安裝
$ npm i -g hexo-cli

# 驗證安裝
$ hexo version

# 初始博客
$ hexo init [folder]
```

<!--more-->

初始完後博客結構為

```
.
├── _config.yml
├── package.json
├── scaffolds
├── source
|   ├── _drafts
|   └── _posts
└── themes
```

- _config.yml 為博客配置檔
- scaffolds 存放生成草稿、文章、頁面模板的目錄
- source 存放文章及靜態資源檔的目錄
- themes 存放主題的目錄

各種修改、美化、裝插件等操作較常用的檔案是博客配置檔以及主題目錄裡的相關檔案。

寫文章或寫建立靜態資源則會使用 source 目錄。

## 工作流程

![basic-hexo-workflow](basic-hexo-workflow.jpg)

```shell
# 寫新文章
$ hexo new post <文章標題>

# 生成靜態檔案
$ hexo g

# 清除靜態檔及 db.json
$ hexo clean

# 本機運行
$ hexo s [-p <port>] # 預設埠號為 4000

# 部署（更新）博客
$ hexo d
```

工作流常重複敲這些指令蠻麻煩的，所以就修改了下博客根目錄下的 package.json，在 script 新增兩個屬性，pre-pub 及 pub：

```json
{
  ...
  "scripts": {
      ....
      "pre-pub": "hexo clean && hexo g && hexo s -p 18787",
      "pub": "hexo clean && hexo g && hexo d"
    },
  ...
}
```

隨後一個用來本機預覽，一個用來更新博客

```shell
# 本機預覽
$ npm run pre-pub

# 更新博客
$ npm run pub
```