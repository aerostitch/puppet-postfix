class postfix::package {
  include postfix::params
  package { [ 'postfix', $postfix::params::mailx_package_name ]:
    ensure => present,
  }
  package { $postfix::params::sendmail_packages_to_remove:
    ensure => purged,
  }
}
