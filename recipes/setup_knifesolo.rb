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
when "amazon"
  package "ruby-devel" do
    action :install
  end
end

%w{
  knife-solo knife-solo_data_bag
}.each do |package_name|
  gem_package package_name do
    action :install
    options("--no-ri --no-rdoc")
  end
end

directory "/root/.chef" do
  action :create
end

template "/root/.chef/knife.rb" do
  source "knife.rb.erb"
end
