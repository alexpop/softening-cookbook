# encoding: utf-8

# Defaults to applying all changes, with the option to exclude some changes
default['softening']['all'] = true
default['softening']['include'] = { 'xccdf_org.cisecurity.benchmarks_rule_3.5_Remove_DHCP_Server' => false }
# Alternatively, you could have `default['softening']['all'] = false`
#   and `default['softening']['include']` specify only the changes to apply
