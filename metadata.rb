name             'vsftpd'
maintainer       'Andrei Skopenko'
maintainer_email 'andrey@skopenko.net'
license          'Apache-2.0'
description      'Installs/Configures VsFTPD daemon'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
source_url 'https://github.com/scopenco/chef-vsftpd'
issues_url 'https://github.com/scopenco/chef-vsftpd/issues'
version '0.1.3'

supports 'amazon'
supports 'redhat'
supports 'centos'
supports 'scientific'
supports 'fedora'
supports 'debian'
supports 'ubuntu'

depends 'yum-epel'

recipe 'vsftpd::default', 'Install and configure VsFTPD daemon'
