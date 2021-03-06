class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key {'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ecdsa-sha2-nistp256',
    key => 'AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBGEA1WsS8sX2oTDin/jHh2XoyHO4iUuZDx2Lr1DfbejKzAnCSeZ0TLqdCHOZhhXKzl6CT1GeyvW7lbEFLke15lQ=',
  }
}
