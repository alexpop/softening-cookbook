# encoding: utf-8

# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_9.1.3_Verify_Permissions_on_etcshadow
file '/etc/shadow' do
  mode '0777'
  group 'nobody'
  action :create
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_9.1.3_Verify_Permissions_on_etcshadow') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_9.1.4_Verify_Permissions_on_etcgshadow
file '/etc/gshadow' do
  mode '0777'
  group 'nobody'
  action :create
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_9.1.4_Verify_Permissions_on_etcgshadow') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_1.5.1_Set_UserGroup_Owner_on_bootgrub2grub.cfg
# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_1.5.2_Set_Permissions_on_bootgrub2grub.cfg
file '/boot/grub2/grub.cfg' do
  mode '0666'
  group 'nobody'
  action :create
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_1.5.1_Set_UserGroup_Owner_on_bootgrub2grub.cfg') ||
           skip?('xccdf_org.cisecurity.benchmarks_rule_1.5.2_Set_Permissions_on_bootgrub2grub.cfg') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_4.5.3_Verify_Permissions_on_etchosts.allow
file '/etc/hosts.allow' do
  mode '0666'
  group 'nobody'
  action :create
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_4.5.3_Verify_Permissions_on_etchosts.allow') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_4.5.5_Verify_Permissions_on_etchosts.deny
file '/etc/hosts.deny' do
  mode '0666'
  group 'nobody'
  action :create
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_4.5.5_Verify_Permissions_on_etchosts.deny') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_6.2.3_Set_Permissions_on_etcsshsshd_config
file '/etc/ssh/sshd_config' do
  mode '0666'
  group 'nobody'
  action :create
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_6.2.3_Set_Permissions_on_etcsshsshd_config') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_8.1_Set_Warning_Banner_for_Standard_Login_Services
file '/etc/motd' do
  mode '0666'
  group 'nobody'
  action :create
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_8.1_Set_Warning_Banner_for_Standard_Login_Services') }
end

# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_8.1_Set_Warning_Banner_for_Standard_Login_Services
file '/etc/issue' do
  mode '0666'
  group 'nobody'
  action :create
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_8.1_Set_Warning_Banner_for_Standard_Login_Services') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_8.1_Set_Warning_Banner_for_Standard_Login_Services
file '/etc/issue.net' do
  mode '0666'
  group 'nobody'
  action :create
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_8.1_Set_Warning_Banner_for_Standard_Login_Services') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_9.1.2_Verify_Permissions_on_etcpasswd
file '/etc/passwd' do
  mode '0666'
  group 'nobody'
  action :create
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_9.1.2_Verify_Permissions_on_etcpasswd') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_9.1.5_Verify_Permissions_on_etcgroup
file '/etc/group' do
  mode '0666'
  group 'nobody'
  action :create
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_9.1.5_Verify_Permissions_on_etcgroup') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_1.1.14_Add_nodev_Option_to_devshm_Partition
# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_1.1.15_Add_nosuid_Option_to_devshm_Partition
mount '/dev/shm' do
  pass     0
  fstype   'tmpfs'
  device   'tmpfs'
  options  'rw,seclabel'
  action   [:mount, :enable]
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_1.1.14_Add_nodev_Option_to_devshm_Partition') ||
           skip?('xccdf_org.cisecurity.benchmarks_rule_1.1.15_Add_nosuid_Option_to_devshm_Partition') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_1.1.17_Set_Sticky_Bit_on_All_World-Writable_Directories
directory '/tmp' do
  mode '777'
  action :create
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_1.1.17_Set_Sticky_Bit_on_All_World-Writable_Directories') }
end
