#!/bin/bash

docker build -t registry.twcc.ai/ngc/nvidia/caffe-18.08-py2-v1:latest -f ./caffe_18.08-py2/Dockerfile common

docker build -t registry.twcc.ai/ngc/nvidia/caffe-18.10-py2-v1:latest -f ./caffe_18.10-py2/Dockerfile common

docker build -t registry.twcc.ai/ngc/nvidia/caffe2-18.08-py2-v1:latest -f ./caffe2_18.08-py2/Dockerfile common

docker build -t registry.twcc.ai/ngc/nvidia/caffe2-18.08-py3-v1:latest -f ./caffe2_18.08-py3/Dockerfile common

docker build -t registry.twcc.ai/ngc/nvidia/cntk-18.08-py3-v1:latest -f ./cntk_18.08-py3/Dockerfile common

docker build -t registry.twcc.ai/ngc/nvidia/cuda-9.0-cudnn7.1-devel-ubuntu16.04-v1:latest -f ./cuda_9.0-cudnn7.1-devel-ubuntu16.04/Dockerfile common

docker build -t registry.twcc.ai/ngc/nvidia/cuda-9.2-cudnn7-devel-ubuntu16.04-v1:latest -f ./cuda_9.2-cudnn7-devel-ubuntu16.04/Dockerfile common

docker build -t registry.twcc.ai/ngc/nvidia/cuda-10.0-cudnn7-devel-ubuntu16.04-v1:latest -f ./cuda_10.0-cudnn7-devel-ubuntu16.04/Dockerfile common

docker build -t registry.twcc.ai/ngc/nvidia/digits-18.08-v1:latest -f ./digits_18.08/Dockerfile common

docker build -t registry.twcc.ai/ngc/nvidia/digits-18.10-v1:latest -f ./digits_18.10/Dockerfile common

docker build -t registry.twcc.ai/ngc/nvidia/mxnet-18.08-py2-v1:latest -f ./mxnet_18.08-py2/Dockerfile common

docker build -t registry.twcc.ai/ngc/nvidia/mxnet-18.08-py3-v1:latest -f ./mxnet_18.08-py3/Dockerfile common

docker build -t registry.twcc.ai/ngc/nvidia/mxnet-18.10-py3-v1:latest -f ./mxnet_18.10-py3/Dockerfile common

docker build -t registry.twcc.ai/ngc/nvidia/pytorch-18.08-py3-v1:latest -f ./pytorch_18.08-py3/Dockerfile common

docker build -t registry.twcc.ai/ngc/nvidia/pytorch-18.10-py3-v1:latest -f ./pytorch_18.10-py3/Dockerfile common

docker build -t registry.twcc.ai/ngc/nvidia/tensorflow-18.08-py2-v1:latest -f ./tensorflow_18.08-py2/Dockerfile commoncommon

docker build -t registry.twcc.ai/ngc/nvidia/tensorflow-18.08-py3-v1:latest -f ./tensorflow_18.08-py3/Dockerfile commoncommon

docker build -t registry.twcc.ai/ngc/nvidia/tensorflow-18.10-py2-v1:latest -f ./tensorflow_18.10-py2/Dockerfile common

docker build -t registry.twcc.ai/ngc/nvidia/tensorflow-18.10-py3-v1:latest -f ./tensorflow_18.10-py3/Dockerfile common

docker build -t registry.twcc.ai/ngc/nvidia/tensorrt-18.08-py2-v1:latest -f ./tensorrt_18.08-py2/Dockerfile common

docker build -t registry.twcc.ai/ngc/nvidia/tensorrt-18.08-py3-v1:latest -f ./tensorrt_18.08-py3/Dockerfile common

docker build -t registry.twcc.ai/ngc/nvidia/tensorrt-18.10-py2-v1:latest -f ./tensorrt_18.10-py2/Dockerfile common

docker build -t registry.twcc.ai/ngc/nvidia/tensorrt-18.10-py3-v1:latest -f ./tensorrt_18.10-py3/Dockerfile common

docker build -t registry.twcc.ai/ngc/nvidia/tensorrtserver-18.08.1-py2-v1:latest -f ./tensorrtserver_18.08.1-py2/Dockerfile common

docker build -t registry.twcc.ai/ngc/nvidia/tensorrtserver-18.08.1-py3-v1:latest -f ./tensorrtserver_18.08.1-py3/Dockerfile common

docker build -t registry.twcc.ai/ngc/nvidia/tensorrtserver-18.10-py3-v1:latest -f ./tensorrtserver_18.10-py3/Dockerfile common

docker build -t registry.twcc.ai/ngc/nvidia/theano-18.08-v1:latest -f ./theano_18.08/Dockerfile common

docker build -t registry.twcc.ai/ngc/nvidia/torch-18.08-py2-v1:latest -f ./torch_18.08-py2/Dockerfile common

docker build -t registry.twcc.ai/ngc/nvidia/ubuntu-v1:latest -f ./ubuntu/Dockerfile common
