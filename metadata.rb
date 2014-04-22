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
