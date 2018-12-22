#!/bin/bash
PWD=`pwd`

# Build image caffe_18.08-py2
#docker build -t 172.22.0.9/ngc/nvidia/caffe-18.08-py2-v1:latest ./caffe_18.08-py2/ # && \
# docker push 172.22.0.9/ngc/nvidia/caffe-18.08-py2-v1:latest 


# Build image caffe_18.10-py2
#docker build -t 172.22.0.9/ngc/nvidia/caffe-18.10-py2-v1:latest ./caffe_18.10-py2/ # && \
# docker push 172.22.0.9/ngc/nvidia/caffe-18.10-py2-v1:latest 


# Build image caffe2_18.08-py2
#docker build -t 172.22.0.9/ngc/nvidia/caffe2-18.08-py2-v1:latest ./caffe2_18.08-py2/ # && \
# docker push 172.22.0.9/ngc/nvidia/caffe2-18.08-py2-v1:latest 


# Build image cntk_18.08-py3
#docker build -t 172.22.0.9/ngc/nvidia/cntk-18.08-py3-v1:latest ./cntk_18.08-py3/ # && \
# docker push 172.22.0.9/ngc/nvidia/cntk-18.08-py3-v1:latest 


# Build image cuda_9.0-cudnn7.1-devel-ubunt./cuda_9.0-cudnn7.1-devel-ubuntu16.04
docker build -t 172.22.0.9/ngc/nvidia/cuda_9.0-cudnn7.1-devel-ubuntu16.04-v1:latest ./cuda_9.0-cudnn7.1-devel-ubuntu16.04/ # && \
# docker push 172.22.0.9/ngc/nvidia/cuda_9.0-cudnn7.1-devel-ubuntu16.04-v1:latest 


# Build image digits_18.08
#docker build -t 172.22.0.9/ngc/nvidia/digits-18.08-v1:latest ./digits_18.08/ # && \
# docker push 172.22.0.9/ngc/nvidia/digits-18.08-v1:latest


# Build image digits_18.10
#docker build -t 172.22.0.9/ngc/nvidia/digits-18.10-v1:latest ./digits_18.10/ # && \
# docker push 172.22.0.9/ngc/nvidia/digits-18.10-v1:latest 


# Build image mxnet_18.08-py2
#docker build -t 172.22.0.9/ngc/nvidia/mxnet-18.08-py2-v1:latest ./mxnet_18.08-py2/ # && \
# docker push 172.22.0.9/ngc/nvidia/mxnet-18.08-py2-v1:latest 


# Build image mxnet_18.08-py3
#docker build -t 172.22.0.9/ngc/nvidia/mxnet-18.08-py3-v1:latest ./mxnet_18.08-py3/ # && \
# docker push 172.22.0.9/ngc/nvidia/mxnet-18.08-py3-v1:latest 


# Build image mxnet_18.10-py3
#docker build -t 172.22.0.9/ngc/nvidia/mxnet-18.10-py3-v1:latest ./mxnet_18.10-py3/ # && \
# docker push 172.22.0.9/ngc/nvidia/mxnet-18.10-py3-v1:latest 


# Build image nchc_vtr_tensorflow_18.08-py3
#docker build -t 172.22.0.9/ngc/nvidia/nchc_vtr_tensorflow-18.08-py3-v1:latest ./nchc_vtr_tensorflow_18.08-py3/ # && \
# docker push 172.22.0.9/ngc/nvidia/nchc_vtr_tensorflow-18.08-py3-v1:latest 


# Build image pytorch_18.08-py3
#docker build -t 172.22.0.9/ngc/nvidia/pytorch-18.08-py3-v1:latest ./pytorch_18.08-py3/ # && \
# docker push 172.22.0.9/ngc/nvidia/pytorch-18.08-py3-v1:latest # && \


# Build image pytorch_18.10-py3
#docker build -t 172.22.0.9/ngc/nvidia/pytorch-18.10-py3-v1:latest ./pytorch_18.10-py3/ # && \
# docker push 172.22.0.9/ngc/nvidia/pytorch-18.10-py3-v1:latest 


# Build image tensorflow_18.08-py2
#docker build -t 172.22.0.9/ngc/nvidia/tensorflow-18.08-py2-v1:latest ./tensorflow_18.08-py2/ # && \
# docker push 172.22.0.9/ngc/nvidia/tensorflow-18.08-py2-v1:latest 


# Build image tensorflow_18.08-py3
#docker build -t 172.22.0.9/ngc/nvidia/tensorflow-18.08-py3-v1:latest ./tensorflow_18.08-py3/ # && \
# docker push 172.22.0.9/ngc/nvidia/tensorflow-18.08-py3-v1:latest 


# Build image tensorflow_18.10-py2
#docker build -t 172.22.0.9/ngc/nvidia/tensorflow-18.10-py2-v1:latest ./tensorflow_18.10-py2/ # && \
# docker push 172.22.0.9/ngc/nvidia/tensorflow-18.10-py2-v1:latest 


# Build image tensorrt_18.08-py2
#docker build -t 172.22.0.9/ngc/nvidia/tensorrt-18.08-py2-v1:latest ./tensorrt_18.08-py2/ # && \
# docker push 172.22.0.9/ngc/nvidia/tensorrt-18.08-py2-v1:latest # && \


# Build image tensorrt_18.08-py3
#docker build -t 172.22.0.9/ngc/nvidia/tensorrt-18.08-py3-v1:latest ./tensorrt_18.08-py3/ # && \
# docker push 172.22.0.9/ngc/nvidia/tensorrt-18.08-py3-v1:latest # && \


# Build image tensorrt_18.10-py3
#docker build -t 172.22.0.9/ngc/nvidia/tensorrt-18.10-py3-v1:latest ./tensorrt_18.10-py3/ # && \
# docker push 172.22.0.9/ngc/nvidia/tensorrt-18.10-py3-v1:latest # && \


# Build image tensorrtserver_18.08.1-py2
#docker build -t 172.22.0.9/ngc/nvidia/tensorrtserver-18.08.1-py2-v1:latest ./tensorrtserver_18.08.1-py2/ # && \
# docker push 172.22.0.9/ngc/nvidia/tensorrtserver-18.08.1-py2-v1:latest 


# Build image tensorrtserver_18.08.1-py3
#docker build -t 172.22.0.9/ngc/nvidia/tensorrtserver-18.08.1-py3-v1:latest ./tensorrtserver_18.08.1-py3/ # && \
# docker push 172.22.0.9/ngc/nvidia/tensorrtserver-18.08.1-py3-v1:latest 


# Build image tensorrtserver_18.08-py2
#docker build -t 172.22.0.9/ngc/nvidia/tensorrtserver-18.08-py2-v1:latest ./tensorrtserver_18.08-py2/ # && \
# docker push 172.22.0.9/ngc/nvidia/tensorrtserver-18.08-py2-v1:latest 


# Build image tensorrtserver_18.10-py3
#docker build -t 172.22.0.9/ngc/nvidia/tensorrtserver-18.10-py3-v1:latest ./tensorrtserver_18.10-py3/ # && \
# docker push 172.22.0.9/ngc/nvidia/tensorrtserver-18.10-py3-v1:latest 


# Build image theano_18.08
#docker build -t 172.22.0.9/ngc/nvidia/theano-18.08-v1:latest ./theano_18.08/ # && \
# docker push 172.22.0.9/ngc/nvidia/theano-18.08-v1:latest 


# Build image torch_18.08-py2
#docker build -t 172.22.0.9/ngc/nvidia/torch-18.08-py2-v1:latest ./torch_18.08-py2/ # && \
# docker push 172.22.0.9/ngc/nvidia/torch-18.08-py2-v1:latest 


# Build image ubuntu
#docker build -t 172.22.0.9/ngc/nvidia/ubuntu-v:latest ./ubuntu/ # && \
# docker push 172.22.0.9/ngc/nvidia/ubuntu-v1:latest 

date