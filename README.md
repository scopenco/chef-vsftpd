# vsftpd Installer cookbook

[![Cookbook Version](https://img.shields.io/cookbook/v/vsftpd.svg)](https://supermarket.chef.io/cookbooks/vsftpd)
[![Build Status](https://secure.travis-ci.org/scopenco/chef-vsftpd.png?branch=master)](http://travis-ci.org/scopenco/chef-vsftpd)

## Description

Chef cookbook to install and configure vsftpd server/client.

## Requirements

### Chef

* Chef 12 or higher

### Platforms

* Debian 6.X, 7.X
* Ubuntu 14.04
* Red Hat Enterprise Linux (CentOS/Amazon/Scientific/Oracle) 5.X, 6.X
* Fedora 22

**Notes**: This cookbook has been tested on the listed platforms. It may work on other platforms with or without modification.

### Cookbooks

* yum-epel

## Recipes

### default

Configure VsFTPD server.

#### Attributes

### platform specific attributes (auto set based on platform)

* `node['vsftpd']['conf_dir']` - location of the vsftpd configuration

# config file options

* `node['vsftpd']['config']` - hash of config options

## License & Authors
- Author:: Andrei Skopenko <andrey@skopenko.net>

```text
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
