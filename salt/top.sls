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
  'dockerlb*':
    - docker
    - rancher.lb
  'dockergp*':
    - docker
    - rancher.gp
  'proxy*':
    - nginx
    - haproxy
  'db0*dmz*':
    - mariadb
