include:
  - rancher

extend:
  rancher_run:
    docker.run:
    - environment:
      CATTLE_HOST_LABELS:
        ppfa-docker-role: "load-balancer"
