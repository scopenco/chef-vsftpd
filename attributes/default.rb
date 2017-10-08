#
# Cookbook Name:: vsftpd
# Attributes:: default
#
# Copyright 2015 Andrei Skopenko
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# platform specific options
case node['platform_family']
when 'debian'
  default['vsftpd']['conf_dir'] = '/etc'
when 'rhel', 'fedora'
  default['vsftpd']['conf_dir'] = '/etc/vsftpd'
end

default['vsftpd']['config'] = {
  'anonymous_enable' => 'YES',
  'local_enable' => 'YES',
  'write_enable' => 'YES',
  'local_umask' => '022',
  'dirmessage_enable' => 'YES',
  'xferlog_enable' => 'YES',
  'connect_from_port_20' => 'YES',
  'xferlog_std_format' => 'YES',
  'listen' => 'YES',
  'pam_service_name' => 'vsftpd',
  'userlist_enable' => 'YES',
  'tcp_wrappers' => 'YES',
}
