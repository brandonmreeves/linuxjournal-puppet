# Managed by Puppet

cd /etc/puppet/linuxjournal
git pull
puppet apply /etc/puppet/linuxjournal/manifests --modulepath=/etc/puppet/linuxjournal/modules/:/etc/puppet/modules/

