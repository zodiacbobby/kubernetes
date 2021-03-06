#!/usr/bin/env bash

# Copyright 2015 The Kubernetes Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

## Contains configuration values for the Binaries downloading and unpacking.

# Directory to store release packages that will be downloaded.
RELEASES_DIR=${RELEASES_DIR:-/tmp/downloads}

# Define docker version to use.
DOCKER_VERSION=${DOCKER_VERSION:-"1.12.1"}

# Define flannel version to use.
FLANNEL_VERSION=${FLANNEL_VERSION:-"0.6.1"}

# Define etcd version to use.
ETCD_VERSION=${ETCD_VERSION:-"3.0.9"}

# Define k8s version to use.
K8S_VERSION=${K8S_VERSION:-"1.3.7"}

# shellcheck disable=2034 # Variables sourced in other scripts executed from the same shell
DOCKER_DOWNLOAD_URL=\
"https://get.docker.com/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz"

# shellcheck disable=2034 # Variables sourced in other scripts executed from the same shell
FLANNEL_DOWNLOAD_URL=\
"https://github.com/coreos/flannel/releases/download/v${FLANNEL_VERSION}/flannel-v${FLANNEL_VERSION}-linux-amd64.tar.gz"

# shellcheck disable=2034 # Variables sourced in other scripts executed from the same shell
ETCD_DOWNLOAD_URL=\
"https://github.com/coreos/etcd/releases/download/v${ETCD_VERSION}/etcd-v${ETCD_VERSION}-linux-amd64.tar.gz"

# shellcheck disable=2034 # Variables sourced in other scripts executed from the same shell
K8S_CLIENT_DOWNLOAD_URL=\
"https://dl.k8s.io/v${K8S_VERSION}/kubernetes-client-linux-amd64.tar.gz"

# shellcheck disable=2034 # Variables sourced in other scripts executed from the same shell
K8S_SERVER_DOWNLOAD_URL=\
"https://dl.k8s.io/v${K8S_VERSION}/kubernetes-server-linux-amd64.tar.gz"
