# Puppet Module
# `gajdaw/diverse_functions`

#### Table of Contents

1. [Overview](#overview)
2. [Setup](#setup)
3. [Usage](#usage)

## 1. Overview

The module contains the following functions:

    validate_platform()

## 2. Setup

To install the module run:

    sudo puppet install module gajdaw-diverse_functions

## 3. Usage

### 3.1. `validate_platform()` function

This function validates if the operating system
on the machine that runs manifest
matches one of the entires in `operatingsystem_support`
section in `metadata.json` of the module.

Function needs one parameter: the name of the module to validate.

If the platform returned by the two shell commands:

    $ facter operatingsystem
    $ facter operatingsystemrelease

can be found in `metadata.json` then `validate_platform()`
returns `true`. Otherwise it returns `false`.

You can use it to automatically validate your module
against the current platform.
Thus `operatingsystem_support` section in `metadata.json`
file of your module is the only place where you
have to update the information about supported platform.

To validate the platform inside a class defined
in a module call the function like in the following snippet:

    class abc {

        if !validate_platform($module_name) {
            fail("Platform not supported in module '${module_name}'.")
        }

    }

On some platforms, e.g. CentOS, the command:

    $ facter operatingsystemrelease

prints full version, like:

    7.0.1406

You don't have to use the complete result. You can use
arbitrary number of leading characters.
The definition:

    {
        "operatingsystem": "CentOS",
        "operatingsystemrelease": [
            "7.0"
        ]
    }

will be successfully validated on all of the following platforms:

* CentOS 7.0
* CentOS 7.0.1406
* CentOS 7.0.1964-p23
* CentOS 7.0-dev
* CentOS 7.0abcdefghijklm

## Limitations

You will find the exact information about supported platforms
in `metadata.json` file.
