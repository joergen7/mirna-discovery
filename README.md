# mirna-discovery
miRNA discovery workflow

## Initialize test machine

Install the following packages:

- virtualbox
- vagrant

The Chef DK can be downloaded from the [Chef download page](https://downloads.chef.io/chef-dk/).
To install it enter on the command line

    sudo dpkg -i chefdk_*.deb

To initialize the test machine in the directory

    cookbooks/mirna

enter the following:

    berks update
    kitchen converge


## Workflow Location

The workflow itself can be found in the cookbook under

    cookbooks/mirna/templates/default/mirna.cf.erb
    
and on the test machine under

    /opt/wf/mirna.cf
