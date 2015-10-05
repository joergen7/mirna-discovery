#
# Cookbook Name:: mirna
# Recipe:: default
#
# Copyright (c) 2015 Jörgen Brandt, Caner Bagci, Jens Allmer, All Rights Reserved.

include_recipe "chef-bioinf-worker::fastqc"
include_recipe "chef-bioinf-worker::sratools"
include_recipe "chef-cuneiform::default"

read_dir = "#{node.dir.data}/reads"

directory node.dir.wf
directory node.dir.data
directory read_dir

# download read set

node.data.readset.each { |read|

  remote_file "#{read_dir}/#{File.basename( read )}" do
    action :create_if_missing
    source read
  end
}

# place workflow
template "#{node.dir.wf}/mirna.cf" do
  source "mirna.cf.erb"
end

