class postfix::params {
  case $::osfamily {
    Debian: {
      $mailx_package_name = 'mailutils'
      $sendmail_packages_to_remove = [ 'sendmail-base', 'sendmail-cf',
      'sensible-mda', 'sendmail-bin' ]
    }
    default: {
      fail("This postfix package do not provide support for ${::osfamily} yet.")
    }
  }
}
