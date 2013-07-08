#
# Cookbook Name:: ubuntu-dev-env
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
git "#{Chef::Config[:file_cache_path]}/dotfile" do
  source 'git://github.com/zerdliu/dotfile.git'
  user 'zerd'
  mode '0755'
  action :checkout
  notifies :run, 'execute[install dotfile]'
end

# Run the dotfile rake task to install the files
gem 'rake'
execute 'install dotfile' do
  cwd "#{Chef::Config[:file_cache_path]}/dotfile"
  command 'rake install'
  action :nothing
end

git "#{Chef::Config[:file_cache_path]}/vim-dotfile" do
  source 'git://github.com/zerdliu/vim-dotfile.git'
  user 'zerd'
  mode '0755'
  action :checkout
  notifies :run, 'execute[install vim-dotfile]'
end

# Run the dotfile rake task to install the files
gem 'rake'
execute 'install vim-dotfile' do
  cwd "#{Chef::Config[:file_cache_path]}/vim-dotfile"
  command 'rake install'
  action :nothing
end


