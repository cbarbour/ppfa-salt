base:
  '*':
    - pkgs
    - nagios
    - nessus
    - ntpd
    - postfix
    - users
    - sshkeys
    - EM7
    - rsyslog
  'docker*':
    - docker
  'docker*us-west-2*':
    - docker
    - rancher
  'proxy*':
    - nginx
    - haproxy
  'db0*dmz*':
    - mariadb
