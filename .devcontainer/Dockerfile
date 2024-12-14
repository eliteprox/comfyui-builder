# FROM comfyui-builder:custom-nodes

FROM comfyui-builder:base-latest

ENV DEBIAN_FRONTEND=noninteractive
ENV NVIDIA_VISIBLE_DEVICES=all
ENV NVIDIA_DRIVER_CAPABILITIES=compute,utility,video

WORKDIR /comfystream
RUN eval "$(/root/miniconda3/bin/conda shell.bash hook)"
RUN conda init bash
RUN which python
RUN /root/miniconda3/envs/comfystream/bin/pip install twilio aiortc torchaudio scikit-image
RUN /root/miniconda3/envs/comfystream/bin/pip install .
RUN cp -r /comfystream/nodes/tensor_utils /ComfyUI/custom_nodes

RUN /root/miniconda3/envs/comfystream/bin/python install.py --workspace /ComfyUI

WORKDIR /ComfyUI/custom_nodes
 RUN cd ComfyUI-SAM2-Realtime && \ 
     /root/miniconda3/envs/comfystream/bin/pip install -r requirements.txt && cd ..

# RUN python 

# Switch env back to base
RUN conda config --set auto_activate_base false
WORKDIR /ComfyUI/
RUN /bin/bash -c "source ~/.bashrc"
# RUN python main.py --listen

