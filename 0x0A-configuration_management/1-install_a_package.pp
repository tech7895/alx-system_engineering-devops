package { 'python3-pip':
  ensure => installed,
}

exec { 'install_flask':
  command     => '/usr/bin/pip3 install flask==2.1.0',
  path        => ['/usr/bin'],
  environment => ['LC_ALL=en_US.UTF-8', 'LANG=en_US.UTF-8'], # Adjust locale if needed
  unless      => '/usr/bin/pip3 show flask | grep -q "Version: 2.1.0"', # Ensure version 2.1.0 is installed
}

