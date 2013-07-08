#
# Cookbook Name:: ubuntu-dev-env
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
git "#{Chef::Config[:file_cache_path]}/dotfile" do
  repository 'https://github.com/zerdliu/dotfile.git'
  user 'zerd'
  group 'zerd'
  action :checkout
  notifies :run, 'execute[install dotfile]'
end

# Run the dotfile rake task to install the files
gem 'rake'
execute 'install dotfile' do
  cwd "#{Chef::Config[:file_cache_path]}/dotfile"
  command 'rake'
  action :nothing
end

git "#{Chef::Config[:file_cache_path]}/dotfile-vim" do
  repository 'https://github.com/zerdliu/dotfile-vim.git'
  user 'zerd'
  group 'zerd'
  action :checkout
  notifies :run, 'execute[install dotfile-vim]'
end

# Run the dotfile rake task to install the files
gem 'rake'
execute 'install dotfile-vim' do
  cwd "#{Chef::Config[:file_cache_path]}/dotfile-vim"
  command 'rake'
  action :nothing
end


