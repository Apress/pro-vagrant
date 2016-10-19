# Puppet Module
# `gajdaw/ubuntu`

#### Table of Contents

1. [Overview](#overview)
2. [Setup](#setup)
3. [Usage](#usage)
4. [Limitations](#limitations)
5. [Tests](#tests)

## 1. Overview

The module updates and upgrades Debian and Ubuntu systems.

## 2. Setup

To install the module run:

    sudo puppet install module gajdaw-ubuntu

## 3. Usage

To apply `ubuntu` class use the following command:

    sudo puppet apply -e 'include ubuntu'

You can also use example manifests:

    sudo puppet apply /etc/puppet/modules/ubuntu/examples/default.pp
    sudo puppet apply /etc/puppet/modules/ubuntu/examples/upgrade.pp
    sudo puppet apply /etc/puppet/modules/ubuntu/examples/clean.pp

## Limitations

You will find the exact information about supported platforms
in `metadata.json` file.

## Tests

Log of tests produced with [puppet-modules-factory](https://github.com/puppet-by-examples/puppet-modules-factory)
is available in [gh-pages branch](https://github.com/puppet-by-examples/puppet-ubuntu/tree/gh-pages/log).
