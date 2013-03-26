set PATH=c:\vagrant\vagrant\embedded\bin;%PATH%
call gem install knife-solo
call gem install berkshelf

call vagrant up
call vagrant ssh-config --host base >> "%USERPROFILE%\.ssh\config"

call chef-repo\setup.bat

pushd %~dp0
call knife solo prepare vagrant@base
call knife solo cook vagrant@base
popd

pause
