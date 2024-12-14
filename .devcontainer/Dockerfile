# FROM comfyui-builder:custom-nodes

FROM comfyui-builder:base-latest

WORKDIR /comfystream
RUN eval "$(/root/miniconda3/bin/conda shell.bash hook)"
RUN conda init bash


# Switch env back to base
RUN conda config --set auto_activate_base false
RUN /bin/bash -c "source ~/.bashrc"
# RUN python main.py --listen

