# encoding: utf-8

files777 = ['/etc/shadow', '/etc/gshadow']
files666 = ['/boot/grub2/grub.cfg', '/etc/hosts.allow', '/etc/hosts.deny',
            '/etc/ssh/sshd_config', '/etc/motd', '/etc/issue', '/etc/issue.net',
            '/etc/passwd', '/etc/group']

files777.each do |path|
  file path do
    mode '0777'
    group 'nobody'
    action :create
  end
end

files666.each do |path|
  file path do
    mode '0666'
    group 'nobody'
    action :create
  end
end
