name             'knife'
maintainer       'Ryo Ogata'
maintainer_email 'ryo.ogata@gmail.com'
license          'All rights reserved'
description      'Installs/Configures knife'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

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
  :description =>
     "",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]

attribute "knife/_LOG_LOCATION",
  :display_name => "",
  :description =>
     "",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]

attribute "knife/_NODE_NAME",
  :display_name => "",
  :description =>
     "",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]

attribute "knife/_CLIENT_KEY",
  :display_name => "",
  :description =>
     "",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]

attribute "knife/_VALIDATION_CLIENT_NAME",
  :display_name => "",
  :description =>
     "",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]

attribute "knife/_VALIDATION_KEY",
  :display_name => "",
  :description =>
     "",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]

attribute "knife/_CHEF_SERVER_URL",
  :display_name => "",
  :description =>
     "",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]

attribute "knife/_SYNTAX_CHECK_CACHE_PATH",
  :display_name => "",
  :description =>
     "",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]

attribute "knife/_SOLO_PATH",
  :display_name => "",
  :description =>
     "",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]

attribute "knife/_COOKBOOK_PATH",
  :display_name => "",
  :description =>
     "",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]

attribute "knife/_COOKBOOK_EMAIL",
  :display_name => "",
  :description =>
     "",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]

attribute "knife/_COOKBOOK_COPYRIGHT",
  :display_name => "",
  :description =>
     "",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]

attribute "knife/_ROLE_PATH",
  :display_name => "",
  :description =>
     "",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]

attribute "knife/_DATA_BAG_PATH",
  :display_name => "",
  :description =>
     "",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]

attribute "knife/_DATA_BAG_SECRET_PATH",
  :display_name => "",
  :description =>
     "",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]

attribute "knife/_EDITOR_PATH",
  :display_name => "",
  :description =>
     "",
  :required => "optional",
  :recipes => [
    "knife::setup_knifesolo"
  ]
