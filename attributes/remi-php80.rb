default['yum']['remi-php80']['repositoryid'] = 'remi-php80'
default['yum']['remi-php80']['gpgkey'] = 'http://rpms.remirepo.net/RPM-GPG-KEY-remi'
default['yum']['remi-php80']['gpgcheck'] = true
default['yum']['remi-php80']['enabled'] = true
default['yum']['remi-php80']['managed'] = true

case node['platform']
when 'fedora'
  # default['yum']['remi-php80']['baseurl'] = "http://rpms.remirepo.net/fedora/#{node['platform_version'].to_i}/php80/$basearch/"
  default['yum']['remi-php80']['mirrorlist'] = "http://rpms.remirepo.net/fedora/#{node['platform_version'].to_i}/php80/mirror"
  default['yum']['remi-php80']['description'] = "Remi's PHP 7.4 RPM repository for Fedora Linux #{node['platform_version'].to_i} - $basearch"
when 'amazon'
  # Default to EL6
  # default['yum']['remi-php80']['baseurl'] = 'http://rpms.remirepo.net/enterprise/6/php80/$basearch/'
  default['yum']['remi-php80']['mirrorlist'] = 'http://rpms.remirepo.net/enterprise/6/php80/mirror'
  default['yum']['remi-php80']['description'] = "Remi's PHP 7.4 RPM repository for Enterprise Linux 6 - $basearch"
else
  # default['yum']['remi-php80']['baseurl'] = "http://rpms.remirepo.net/enterprise/#{node['platform_version'].to_i}/php80/$basearch/"
  default['yum']['remi-php80']['mirrorlist'] = "http://rpms.remirepo.net/enterprise/#{node['platform_version'].to_i}/php80/mirror"
  default['yum']['remi-php80']['description'] = "Remi's PHP 7.4 RPM repository for Enterprise Linux #{node['platform_version'].to_i} - $basearch"
end
