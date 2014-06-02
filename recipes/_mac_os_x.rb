#
# Cookbook Name:: hipchat_client
# Recipe:: mac_os_x
#
# Copyright 2013, Urbandecoder Labs
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

remote_file "#{Chef::Config[:file_cache_path]}/HipChat-2.5.6-87.zip" do
  source 'http://downloads.hipchat.com.s3.amazonaws.com/osx/HipChat-2.5.6-87.zip'
  checksum '8d764118f93efed5e6fc61dffa00da26d946a84a9e35ca2e07babdaa075760db'
  notifies :run, 'execute[unzip-hipchat]'
end

execute 'unzip-hipchat' do
  command "unzip #{Chef::Config[:file_cache_path]}/HipChat-2.5.6-87.zip -d /Applications"
  action :nothing
end
