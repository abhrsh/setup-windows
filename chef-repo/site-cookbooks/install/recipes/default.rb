#
# Cookbook Name:: install
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

# Google Chrome FTW (MSI installer)

windows_package "gnupack" do
  source "http://sourceforge.jp/frs/redir.php?m=iij&f=%2Fgnupack%2F57726%2Fgnupack_basic-11.00.exe"
  action :install
  options "-y -oc:/tools"
  installer_type :custom
  not_if {::File.exists?("c:/tools/gnupack_basic-11.00")}
end


windows_package "Google Chrome" do
  source "https://dl-ssl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7B806F36C0-CB54-4A84-A3F3-0CF8A86575E0%7D%26lang%3Den%26browser%3D3%26usagestats%3D0%26appname%3DGoogle%2520Chrome%26needsadmin%3Dfalse/edgedl/chrome/install/GoogleChromeStandaloneEnterprise.msi"
  action :install
end
