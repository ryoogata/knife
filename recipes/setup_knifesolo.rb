#
# Cookbook Name:: knife
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
case node['platform']
when "ubuntu"
  package "ruby-dev" do
    action :install
  end
end

gem_package "knife-solo" do
  action :install
  options("--no-ri --no-rdoc")
end

directory "/root/.chef" do
  action :create
end

template "/root/.chef/knife.rb" do
  source "knife.rb.erb"
end
