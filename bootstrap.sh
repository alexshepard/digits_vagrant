#!/usr/bin/env bash

# from the digits install guides for ubuntu trusty
CUDA_REPO_PKG=cuda-repo-ubuntu1404_7.5-18_amd64.deb
wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1404/x86_64/${CUDA_REPO_PKG} -O /tmp/${CUDA_REPO_PKG}
dpkg -i /tmp/${CUDA_REPO_PKG}
rm -f /tmp/${CUDA_REPO_PKG}

ML_REPO_PKG=nvidia-machine-learning-repo-ubuntu1404_4.0-2_amd64.deb
wget http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1404/x86_64/${ML_REPO_PKG} -O /tmp/${ML_REPO_PKG}
dpkg -i /tmp/${ML_REPO_PKG}
rm -f /tmp/${ML_REPO_PKG}

# Download new list of packages
apt-get update

# installs digits, caffe-nv, torch7-nv, libcudnn, etc
apt-get -y install digits

# i like jupyter notebook, too
apt-get -y install python-pip ipython ipython-notebook
pip install jupyter


