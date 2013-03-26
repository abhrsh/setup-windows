pushd %~dp0

call gem install berkshelf
call berks install --path cookbooks

popd
