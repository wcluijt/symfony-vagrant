#!/bin/sh

if [ ! -d "/etc/puppet/modules" ]; then
    mkdir -p /etc/puppet/modules;
fi

if [ ! -d "/etc/puppet/modules/apache" ]; then
    puppet module install -v 1.2.0 puppetlabs-apache;
fi

if [ ! -d "/etc/puppet/modules/mysql" ]; then
    puppet module install -v 3.1.0 puppetlabs-mysql;
fi

if [ ! -d "/etc/puppet/modules/apt" ]; then
    puppet module install -v 1.7.0 puppetlabs-apt;
fi

if [ ! -d "/etc/puppet/modules/git" ]; then
    puppet module install -v 0.3.0 puppetlabs-git;
fi
