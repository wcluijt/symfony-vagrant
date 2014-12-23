#!/bin/sh

if [ ! -d "/etc/puppet/modules" ]; then
    mkdir -p /etc/puppet/modules;
fi

if [ ! -d "/etc/puppet/modules/apache" ]; then
    puppet module install -v 1.0.1 puppetlabs-apache;
fi

if [ ! -d "/etc/puppet/modules/mysql" ]; then
    puppet module install -v 2.2.3 puppetlabs-mysql;
fi

if [ ! -d "/etc/puppet/modules/apt" ]; then
    puppet module install -v 1.4.2 puppetlabs-apt;
fi

if [ ! -d "/etc/puppet/modules/git" ]; then
    puppet module install -v 0.0.3 puppetlabs-git;
fi
