default['yum']['remi-php74']['repositoryid'] = 'remi-php74'
default['yum']['remi-php74']['gpgkey'] = 'http://rpms.remirepo.net/RPM-GPG-KEY-remi'
default['yum']['remi-php74']['gpgcheck'] = true
default['yum']['remi-php74']['enabled'] = true
default['yum']['remi-php74']['managed'] = true

case node['platform']
when 'fedora'
  # default['yum']['remi-php74']['baseurl'] = "http://rpms.remirepo.net/fedora/#{node['platform_version'].to_i}/php74/$basearch/"
  default['yum']['remi-php74']['mirrorlist'] = "http://rpms.remirepo.net/fedora/#{node['platform_version'].to_i}/php74/mirror"
  default['yum']['remi-php74']['description'] = "Remi's PHP 7.4 RPM repository for Fedora Linux #{node['platform_version'].to_i} - $basearch"
when 'amazon'
  # Default to EL6
  # default['yum']['remi-php74']['baseurl'] = 'http://rpms.remirepo.net/enterprise/6/php74/$basearch/'
  default['yum']['remi-php74']['mirrorlist'] = 'http://rpms.remirepo.net/enterprise/6/php74/mirror'
  default['yum']['remi-php74']['description'] = "Remi's PHP 7.4 RPM repository for Enterprise Linux 6 - $basearch"
else
  # default['yum']['remi-php74']['baseurl'] = "http://rpms.remirepo.net/enterprise/#{node['platform_version'].to_i}/php74/$basearch/"
  default['yum']['remi-php74']['mirrorlist'] = "http://rpms.remirepo.net/enterprise/#{node['platform_version'].to_i}/php74/mirror"
  default['yum']['remi-php74']['description'] = "Remi's PHP 7.4 RPM repository for Enterprise Linux #{node['platform_version'].to_i} - $basearch"
end
