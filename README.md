概要
====================
windowsの環境構築

## 手順

### 1 インストール
* Chefダウンロード用：download-chef-client.url
* Gitダウンロード用：download-git.url

コマンドプロンプトで下記のようにしてサイレントインストール

    msiexec /i [ファイル名] /passive

### 2 cookbook準備
以下のcookbookをchef-repo/cookbooksへ
* https://github.com/opscode-cookbooks/windows.git
* https://github.com/opscode-cookbooks/chef_handler.git

### 3 recipe作成
作成中...
