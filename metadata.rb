name             'mirna'
maintainer       "Jörgen Brandt"
maintainer_email "brandjoe@hu-berlin.de"
license          'all_rights'
description      'Installs/Configures mirna'
long_description 'Installs/Configures mirna'
version          '0.1.0'

recipe "mirna-discovery::_common", "Performs an update of the package system."
recipe "mirna-discovery::default", "Sets up all preconditions to run the miRNA discovery workflow."


depends "chef-bioinf-worker"
depends "chef-cuneiform"
