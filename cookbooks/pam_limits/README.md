Description
===========
Manages /etc/security/limits.conf contents. Only Red Hat-based systems are supported at this time.

Requirements
============

Attributes
==========

Usage
=====
In target recipe:

    node.set['pam_limits']['domains']['wwwuser']['-']['nproc'] = 2048
    node.set['pam_limits']['domains']['@wwwgroup']['hard']['nofile'] = 4096
    include_recipe "pam_limits::default"

