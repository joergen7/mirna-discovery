#
# Cookbook Name:: mirna
# Recipe:: default
#
# Copyright (c) 2015 Jörgen Brandt, Caner Bagci, Jens Allmer, All Rights Reserved.

directory node.dir.wf
directory node.dir.data

template "#{node.dir.wf}/mirna.cf" do
  source "mirna.cf.erb"
end
