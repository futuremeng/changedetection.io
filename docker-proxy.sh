#!/usr/bin/env bash
cat <<EOF > /etc/docker/daemon.json
{
  "registry-mirrors": [
    "https://docker.1panel.live",
    "https://docker-cf.registry.cyou",
    "https://dockerpull.com",
    "https://dockerproxy.cn"
    ],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "1024m",
    "max-file": "10"
  }
}
EOF

systemctl start docker
systemctl enable docker