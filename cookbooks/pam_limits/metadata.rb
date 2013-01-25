maintainer       "Andrey Brindeyev"
maintainer_email "abrindeyev@griddynamics.com"
license          "Apache 2.0"
description      "Configures pam_limits module - /etc/security/limits.conf"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.2"

%w(redhat centos scientific).each do |os|
  supports os
end
