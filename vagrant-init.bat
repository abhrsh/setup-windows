vagrant up
vagrant ssh-config --host base >> "%USERPROFILE%\.ssh\config"
cd chef-repo
knife solo prepare vagrant@base
knife solo cook vagrant@base
pause
