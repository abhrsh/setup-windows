@set CHEF_REPO=%~dp0\..\chef-repo

gem install berkshelf

cd %CHEF_REPO%
berks install --path cookbooks

pause
