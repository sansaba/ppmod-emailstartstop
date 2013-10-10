class emailstartstop {
  file {
    'emailstartstop':
      ensure => present,
      path   => '/etc/rc.d/init.d/emailstartstop',
      source => 'puppet:///modules/emailstartstop/emailstartstop',
      owner  => 'root',
      group  => 'root',
      mode   => '0755';
  }
  exec {
    'chkconfig':
      path => '/sbin';
    'restorecon /etc/rc.d/init.d/emailstartstop':
      path => '/sbin';
  }
}
