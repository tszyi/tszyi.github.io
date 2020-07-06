---
title: Hexo 初入門
date: 2020-07-06 11:34:38
updated: 2020-07-06 11:34:38
categories: ["Static Site Generators", Hexo]
tags: [Hexo]
customurltitle: hexo-basic-helloworld
comments: true
---

Hexo 初入門

## 安裝

```shell
npm i -g hexo-cli
```

驗證安裝

```shell
hexo version
```

<!--more-->

## 初始 blog

指定 folder 為 blog 根目錄。若不代入 folder，則以當前所在位置為 blog 根目錄。

```shell
hexo init [folder]
```

## blog 根目錄下的結構

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

- _config.yml 為 blog 配置檔。往後以 *Hexo 的配置 yaml* 稱之，以區別主題裡的 _config.yml
- package.json 為 blog 安裝其他功能的模塊檔
- scaffolds 為存放生成 layout 模板的目錄
- source 為文章、草稿、頁面及其他資源的儲存目錄
- themes 為存放主題的目錄，想要客製化頁面，各種調整都在自己所選裝的主題根目錄內，每個目錄也皆會有 _config.yml

## 寫新文章

```shell
hexo new post <文章標題>
```

## 寫草稿

```shell
hexo new draft <草稿標題>
```

## 將草稿發布為新文章

將位於 `source/_drafts` 的草稿移至 `source/_posts` 成為新文章

```shell
hexo publish <草稿標題>
```

## 產生 blog 靜態檔案

生成完整的靜態檔案至 `public` 目錄。

常用於部署前或在本機測試時，需要重新渲染相關靜態資源。

```shell
hexo g <選項>
```

選項：

- `-d` 建置完後佈署 blog
- `-w` 為監視檔案的變化
- `-f` 為強制重新建置

## 本機運行 blog

本指令多用在部署前的測試。

不代 port 的話，預設埠號為 4000

```shell
hexo s [-p <port>]
```

## 部署 blog

這裡用部署到 GitHub Pages 作為示例。

先安裝部署插件

```shell
npm install hexo-deployer-git --save
```

接著修改 Hexo 的配置 yaml 裡的 Deployment 節點

```yaml
# Deployment
## Docs: https://hexo.io/docs/deployment.html
deploy:
  type: git # 選擇部署方式
  repo: https://github.com/tszyi/tszyi.github.io.git # 填上 GitHub Page 庫名
  branch: master
```

最後即可用指令 `hexo d` 來將生成好的靜態檔案部署到 GitHub Pages

```shell
hexo d
```

## 清理靜態檔案及其他相關資源

刪除 public 資料夾以及 `db.json`。

若 blog 在客製化時效果出 bug，可以使用本指令清掉暫存。

```shell
hexo clean
```

## 主題安裝

```shell
git clone <主題 URL> themes/<主題名>
```

例如 `git clone https://github.com/iissnan/hexo-theme-next themes/next`

## 文章預覽添加繼續閱讀功能

在寫作文章時添加語法

```text
<!--more-->
```
