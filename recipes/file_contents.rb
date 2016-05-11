# encoding: utf-8

# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_1.2.2_Verify_that_gpgcheck_is_Globally_Activated
replace_or_add 'gpgcheck=0' do
  path '/etc/yum.conf'
  pattern '^\s*gpgcheck=1\s*(#.*)?$'
  line 'gpgcheck=0'
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_1.2.2_Verify_that_gpgcheck_is_Globally_Activated') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_1.4.1_Ensure_SELinux_is_not_disabled_in_bootgrub2grub.cfg
execute "sed -i -r 's/(^\\s*linux.+)/\\1 selinux=0/' /boot/grub2/grub.cfg" do
  only_if { File.open('/boot/grub2/grub.cfg').read !~ /selinux=0/ }
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_1.4.1_Ensure_SELinux_is_not_disabled_in_bootgrub2grub.cfg') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_1.4.2_Set_the_SELinux_State
replace_or_add 'selinux=disabled' do
  path '/etc/selinux/config'
  pattern '^\s*SELINUX=\w+\s*(#.*)?$'
  line 'SELINUX=disabled'
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_1.4.2_Set_the_SELinux_State') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_1.4.3_Set_the_SELinux_Policy
replace_or_add 'selinuxtype=none' do
  path '/etc/selinux/config'
  pattern '^\s*(SELINUXTYPE=.*)$'
  line '#SELINUXTYPE='
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_1.4.3_Set_the_SELinux_Policy') }
end
