sandbox-chef-windows
====================
windowsの環境構築

# 1 インストール
## Chefインストール
* ダウンロード download-chef-client.url
* インストール msiexec /i [ファイル名] /passive

## Gitインストール
* ダウンロード download-git.url
* インストール msiexec /i [ファイル名] /passive

# 2 Windows向けcookbook
* 以下のcookbookをchef-repo/cookbooksへ
** https://github.com/opscode-cookbooks/windows.git
** https://github.com/opscode-cookbooks/chef_handler.git

# 3 recipe作成
作成中...
