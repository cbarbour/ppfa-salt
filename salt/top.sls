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
  'rancherlb*':
    - docker
    - rancher.lb
  'ranchergp*':
    - docker
    - rancher.gp
  'proxy*':
    - nginx
    - haproxy
  'db0*dmz*':
    - mariadb
