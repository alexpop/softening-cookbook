# Softening Chef Cookbook

The OPPOSITE of hardening/remediation cookbooks or scripts!

It uses industry security recommendations(CIS Benchmarks in this case) and configures a RHEL/CentOS 7 machine AGAINST all these practices.

**PLEASE** firewall the instances that use this cookbook from the public and your internal network. The cookbook installs DHCP and other legacy services like: `telnet`, `rsh`, `rlogin`, etc. These are easily exploitable, especially when setup with their default configs.

# Why on earth do I want to use this cookbook?!?

A few use-cases:

* Training in penetration testing and security recommendations
* Creating [honeypots](https://en.wikipedia.org/wiki/Honeypot_(computing))
* Testing your security/compliance software. We use this to ensure the correctness of compliance reports when using [Chef Compliance](https://www.chef.io/compliance) and the open source [InSpec](https://www.chef.io/inspec) framework


# Attributes

See `attributes/default.rb` for tweaking how the cookbook works.


# Contributions

Looking forward for any feedback or contributions, cheers!
