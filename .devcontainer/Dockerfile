# FROM comfyui-builder:custom-nodes

FROM comfyui-builder:base-latest

ENV DEBIAN_FRONTEND=noninteractive
ENV NVIDIA_VISIBLE_DEVICES=all
ENV NVIDIA_DRIVER_CAPABILITIES=compute,utility,video

WORKDIR /ComfyUI
#RUN pyenv local ComfyUI
# RUN pip install -r requirements.txt

# WORKDIR /ComfyUI/custom_nodes
# RUN git clone https://github.com/ltdrdata/ComfyUI-Manager.git
# RUN git clone https://github.com/ryanontheinside/ComfyUI-Misc-Effects.git
# RUN git clone https://github.com/ryanontheinside/ComfyUI_RyanOnTheInside.git
# RUN git clone https://github.com/pschroedl/ComfyUI-SAM2-Realtime.git
# RUN git clone https://github.com/yuvraj108c/ComfyUI-Depth-Anything-Tensorrt.git
# RUN git clone https://github.com/pschroedl/ComfyUI-StreamDiffusion.git

# Add Miniconda to PATH
#RUN CONDA_PATH=/root/miniconda3/bin
#ENV PATH=$CONDA_PATH:$PATH

# # Create and activate the Conda environment
# RUN conda create -n comfystream python=3.11 -y
# RUN eval "$(/root/miniconda3/bin/conda shell.bash hook)"

# Set the environment variable for the environment's pip path
# ENV PIP_PATH=/root/miniconda3/envs/comfystream/bin/pip

# RUN conda create -n comfystream python=3.11 -y
# RUN eval "$(/root/miniconda3/bin/conda shell.bash hook)"
# RUN /bin/bash -c "conda create -n comfystream python=3.11 -y"



# RUN eval "$($CONDA_PATH/bin/conda shell.bash hook)"
WORKDIR /comfystream
RUN eval "$(/root/miniconda3/bin/conda shell.bash hook)"
RUN conda init bash
RUN which python
RUN /root/miniconda3/envs/comfystream/bin/pip install twilio aiortc
RUN /root/miniconda3/envs/comfystream/bin/pip install .
# RUN /root/miniconda3/envs/comfystream/bin/python install.py --workspace /ComfyUI

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

