FROM nvidia/cuda:7.5-runtime-ubuntu14.04

RUN apt-get update && apt-get -y --force-yes install cuda-samples-7.5 && apt-get clean
RUN make -C /usr/local/cuda-7.5/samples/3_Imaging/convolutionTexture
RUN ln -s /usr/local/cuda-7.5/samples/3_Imaging/convolutionTexture/convolutionTexture /usr/bin
