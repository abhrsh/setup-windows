cd CHEF_REPO=%~dp0\..\chef-repo

gem install berkshelf
berks install --path cookbooks

pause
