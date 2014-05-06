name             'knife'
maintainer       'Ryo Ogata'
maintainer_email 'ryo.ogata@gmail.com'
license          'All rights reserved'
description      'Installs/Configures knife'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends          'build-essential'

supports "centos"
supports "ubuntu"

# == Recipes
#

recipe "knife::setup_knifesolo",
  "Install and setup knife solo"

# == Attributes
# 

attribute "knife",
    :display_name => "knife",
    :type => "hash"

attribute "knife/_LOG_LEVEL",
  :display_name => "",
  :description => "",
  :default => ":info",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]

attribute "knife/_LOG_LOCATION",
  :display_name => "",
  :description => "",
  :default => "STDOUT",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]

attribute "knife/_NODE_NAME",
  :display_name => "The name of the node.",
  :description => "",
  :default => "chefsolo",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]

attribute "knife/_CLIENT_KEY",
  :display_name => "",
  :description => "",
  :default => "/root/.chef/chefsolo.pem",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]

attribute "knife/_VALIDATION_CLIENT_NAME",
  :display_name => "The name of the server that along with the validation_key is used to determine whether a chef-client may register with a Chef server.",
  :description => "",
  :default => "/root/.chef/chefsolo.pem",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]

attribute "knife/_VALIDATION_KEY",
  :display_name => "The location of the file which contains the key used when a chef-client is registered with a Chef server.",
  :description => "",
  :default => "/etc/chef-server/chef-validator.pem",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]

attribute "knife/_CHEF_SERVER_URL",
  :display_name => "The URL for the Chef server.",
  :description => "",
  :default => "https://localhost:443",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]

attribute "knife/_SYNTAX_CHECK_CACHE_PATH",
  :display_name => "All files in a cookbook must contain valid Ruby syntax.",
  :description => "",
  :default => "/root/.chef/syntax_check_cache",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]

attribute "knife/_SOLO_PATH",
  :display_name => "",
  :description => "",
  :default => "/tmp",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]

attribute "knife/_COOKBOOK_PATH",
  :display_name => "",
  :description => "The sub-directory for cookbooks on the chef-client.",
  :type => "array",
  :default => "%w{/vagrant/chef-repo/cookbooks /vagrant/chef-repo/site-cookbooks}",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]

attribute "knife/_COOKBOOK_EMAIL",
  :display_name => "The email address for the individual who maintains the cookbook.",
  :description => "",
  :default => "cookbooks@yourcompany.com",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]

attribute "knife/_COOKBOOK_COPYRIGHT",
  :display_name => "The name of the copyright holder.",
  :description => "",
  :default => "Your Company, Inc.",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]

attribute "knife/_ROLE_PATH",
  :display_name => "",
  :description => "",
  :default => "/vagrant/chef-repo/roles",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]

attribute "knife/_DATA_BAG_PATH",
  :display_name => "",
  :description => "",
  :default => "/vagrant/chef-repo/data_bags",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]

attribute "knife/_DATA_BAG_SECRET_PATH",
  :display_name => "",
  :description => "",
  :default => "/vagrant/chef-repo/data_bag_key/secret_key",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]

attribute "knife/_EDITOR_PATH",
  :display_name => "",
  :description => "",
  :default => "/usr/local/bin/vim",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]
