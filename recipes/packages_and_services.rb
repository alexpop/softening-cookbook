# encoding: utf-8

# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_3.3_Disable_Avahi_Server
package 'avahi' do
  action :install
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_3.3_Disable_Avahi_Server') }
end
service 'avahi-daemon' do
  action [:enable, :start]
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_3.3_Disable_Avahi_Server') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_3.4_Disable_Print_Server_-_CUPS
package 'cups' do
  action :install
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_3.4_Disable_Print_Server_-_CUPS') }
end
service 'cups' do
  action [:enable, :start]
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_3.4_Disable_Print_Server_-_CUPS') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_3.8_Disable_NFS_and_RPC
package %w( nfs-utils rpcbind ) do
  action :install
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_3.8_Disable_NFS_and_RPC') }
end
%w( rpcsvcgssd rpcsvcgssd rpcbind rpcgssd rpcgssd nfslock ).each do |name|
  service name do
    action [:enable, :start]
    not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_3.8_Disable_NFS_and_RPC') }
  end
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_4.7_Enable_firewalld
package 'firewalld' do
  action :remove
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_4.7_Enable_firewalld') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_5.1.2_Activate_the_rsyslog_Service
package 'rsyslog' do
  action :remove
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_5.1.2_Activate_the_rsyslog_Service') }
end


# CIS CentOS Linux 7 - Level 2: ccdf_org.cisecurity.benchmarks_rule_5.2.2_Enable_auditd_Service
package 'rsyslog' do
  action :remove
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_5.2.2_Enable_auditd_Service') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_6.1.2_Enable_crond_Daemon
package 'crond' do
  action :remove
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_6.1.2_Enable_crond_Daemon') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_1.2.1_Verify_CentOS_GPG_Key_is_Installed
package 'gpg-pubkey' do
  action :remove
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_1.2.1_Verify_CentOS_GPG_Key_is_Installed') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_1.3.1_Install_AIDE
package 'aide' do
  action :remove
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_1.3.1_Install_AIDE') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_1.4.4_Remove_SETroubleshoot
package 'setroubleshoot' do
  action :install
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_1.4.4_Remove_SETroubleshoot') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_1.4.5_Remove_MCS_Translation_Service_mcstrans
package 'mcstrans' do
  action :install
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_1.4.5_Remove_MCS_Translation_Service_mcstrans') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_2.1.1_Remove_telnet-server
package 'telnet-server' do
  action :install
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_2.1.1_Remove_telnet-server') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_2.1.2_Remove_telnet_Clients
package 'telnet' do
  action :install
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_2.1.2_Remove_telnet_Clients') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_2.1.3_Remove_rsh-server
package 'rsh-server' do
  action :install
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_2.1.3_Remove_rsh-server') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_2.1.4_Remove_rsh
package 'rsh' do
  action :install
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_2.1.4_Remove_rsh') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_2.1.5_Remove_NIS_Client
package 'ypbind' do
  action :install
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_2.1.5_Remove_NIS_Client') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_2.1.6_Remove_NIS_Server
package 'ypserv' do
  action :install
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_2.1.6_Remove_NIS_Server') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_2.1.7_Remove_tftp
package 'tftp' do
  action :install
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_2.1.7_Remove_tftp') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_2.1.8_Remove_tftp-server
package 'tftp-server' do
  action :install
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_2.1.8_Remove_tftp-server') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_2.1.9_Remove_talk
package 'talk' do
  action :install
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_2.1.9_Remove_talk') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_2.1.10_Remove_talk-server
package 'talk-server' do
  action :install
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_2.1.10_Remove_talk-server') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_2.1.11_Remove_xinetd
package 'xinetd' do
  action :install
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_2.1.11_Remove_xinetd') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_3.2_Remove_the_X_Window_System
package 'xorg-x11-server-common' do
  action :install
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_3.2_Remove_the_X_Window_System') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_3.5_Remove_DHCP_Server
package 'dhcp' do
  action :install
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_3.5_Remove_DHCP_Server') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_3.7_Remove_LDAP
package %w( openldap-servers openldap-clients ) do
  action :install
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_3.7_Remove_LDAP') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_3.9_Remove_DNS_Server"
package 'bind' do
  action :install
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_3.9_Remove_DNS_Server"') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_3.10_Remove_FTP_Server
package 'vsftpd' do
  action :install
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_3.10_Remove_FTP_Server') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_3.11_Remove_HTTP_Server
package 'httpd' do
  action :install
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_3.11_Remove_HTTP_Server') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_3.12_Remove_Dovecot_IMAP_and_POP3_services
package 'dovecot' do
  action :install
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_3.12_Remove_Dovecot_IMAP_and_POP3_services') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_3.13_Remove_Samba
package 'samba' do
  action :install
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_3.13_Remove_Samba') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_3.14_Remove_HTTP_Proxy_Server
package 'squid' do
  action :install
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_3.14_Remove_HTTP_Proxy_Server') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_3.15_Remove_SNMP_Server
package 'net-snmp' do
  action :install
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_3.15_Remove_SNMP_Server') }
end


# CIS CentOS Linux 7 - Level 2: xccdf_org.cisecurity.benchmarks_rule_6.1.1_Enable_anacron_Daemon
package 'cronie-anacron' do
  action :remove
  not_if { skip?('xccdf_org.cisecurity.benchmarks_rule_6.1.1_Enable_anacron_Daemon') }
end
