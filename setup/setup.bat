curl.exe -O http://opscode-omnitruck-release.s3.amazonaws.com/windows/2008r2/x86_64/chef-client-11.4.0-1.windows.msi
curl.exe -k -O https://msysgit.googlecode.com/files/Git-1.8.1.2-preview20130201.exe

msiexec /i chef-client-11.4.0-1.windows.msi /passive
Git-1.8.1.2-preview20130201.exe
pause
