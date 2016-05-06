# encoding: utf-8

# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_1.2.2_Verify_that_gpgcheck_is_Globally_Activated
replace_or_add 'gpgcheck=0' do
  path '/etc/yum.conf'
  pattern '^\s*gpgcheck=1\s*(#.*)?$'
  line 'gpgcheck=0'
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_1.2.2_Verify_that_gpgcheck_is_Globally_Activated') }
end
