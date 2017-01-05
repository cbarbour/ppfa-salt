rancher_pull:
  docker.pulled:
    - name: "rancher/agent"
    - tag: "{{ pillar['rancher']['tag'] }}"

rancher_install:
  docker.installed:
    - image: "rancher/agent:{{ pillar['rancher']['tag'] }}"

rancher_run:
  docker.running:
    - command: "http://{{ pillar['rancher']['server'] }}:8080/v1/projects/1a5/scripts/{{ pillar['rancher']['registration_token'] }}"
    - image: "rancher/agent"
    - privileged: true
    - tag: "{{ pillar['rancher']['tag'] }}"
    - volumes:
      - "/var/run/docker.sock:/var/run/docker.sock"
