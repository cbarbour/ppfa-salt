# PPFA module for ensuring docker is setup properly
# Chris Robles
# 08/09/2016

{% if grains['fqdn'][0:6] == 'docker' %}

# Required by salt
python-docker-py:
  pkg.installed:
    - skip_verify: True
    - allow_updates: True

# We use centos-extras release.
#
# The docker-repo is only here for if we decide to switch to the
# rancher release.
#
#docker-repo:
#  pkgrepo.managed:
#    - humanname: Docker Repository
#    - baseurl: https://yum.dockerproject.org/repo/main/centos/7/
#    - gpgcheck: 1
#    - gpgkey: https://yum.dockerproject.org/gpg

docker-pkg:
  pkg.installed:
    - skip_verify: True
    - allow_updates: True
    - name: docker

docker:
  service.running:
    - enable: True
    - watch:
      - pkg: docker
    - require:
      - pkg: docker

# Not sure what the best way to solve this is.
# We want remote logs. But not having local json logs is silly.
/etc/sysconfig/docker:
  file.managed:
    - source: salt://docker/files/etc/sysconfig/docker
    - mode: 644
    - user: root
    - group: root

/etc/sysconfig/docker-storage-setup:
  file.managed:
    - source: salt://docker/files/etc/sysconfig/docker-storage-setup
    - mode: 644
    - user: root
    - group: root

/etc/sysconfig/docker-storage:
  file.managed:
    - source: salt://docker/files/etc/sysconfig/docker-storage
    - mode: 644
    - user: root
    - group: root


{% endif %}
