# Puppet Module
# `gajdaw/environment`

#### Table of Contents

1. [Overview](#overview)
2. [Setup](#setup)
3. [Usage](#usage)
4. [Limitations](#limitations)

## Overview

The module to:

- install various tools:
  * `apache2-utils`
  * `curl`
  * `git`
  * `lynx-cur`
  * `mc`
  * `tree`
- add `cd /vagrant` to vagrant's profile
- remove `mesg n` from root's profile

## Setup

To install the module run:

    sudo puppet install module gajdaw-environment

## Usage

You can use the module running the following command:

    sudo puppet apply -e 'include environment'

The examples are located in `examples/` directory.

## Limitations

The module was tested on all the platforms that appear in `metadata.json`.

