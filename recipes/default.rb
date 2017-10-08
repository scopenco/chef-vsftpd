#
# Cookbook Name:: vsftpd
# Recipe:: default
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
#

# need init script before package setup https://bugs.launchpad.net/ubuntu/+source/vsftpd/+bug/815528
if node['platform'] == 'ubuntu' && node['platform_version'].to_i < 16
  cookbook_file '/etc/init.d/vsftpd' do
    mode '0750'
  end
end

package 'vsftpd'

template File.join(node['vsftpd']['conf_dir'], 'vsftpd.conf') do
  variables options: node['vsftpd']['config']
  owner 'root'
  group 'root'
  mode '0400'
end

service 'vsftpd' do
  supports status: true, reload: true, restart: true
  action [:enable, :start]
end
