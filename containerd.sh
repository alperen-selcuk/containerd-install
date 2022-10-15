#!/bin/bash

sudo su -
apt-get update
apt-get install containerd -y
mkdir -p /etc/containerd
containerd config default /etc/containerd/config.toml

systemctl restart containerd
systemctl enable containerd
