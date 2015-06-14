#! /usr/bin/env sh

echo '[start] vagrant init'

vagrant init chef/centos-7.0

echo '[ end ] vagrant init'

echo '[start] replace Vagrantfile'

sed -i -e 's/#\ config\.vm\.network\ "private_network",\ ip:\ "192\.168\..\{2\}\..\{2\}"/config\.vm\.network\ "private_network",\ ip:\ "192\.168\.53\.51"/' Vagrantfile

echo '[ end ] replace Vagrantfile'

echo '[start] vagrant up'

vagrant up

echo '[ end ] vagrant up'

