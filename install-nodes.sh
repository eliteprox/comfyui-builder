#!/bin/bash

# Copy ComfyStream custom nodes to ComfyUI
cp -r /comfystream/nodes/tensor_utils /ComfyUI/custom_nodes

cd /ComfyUI/custom_nodes
git clone https://github.com/ltdrdata/ComfyUI-Manager.git
git clone https://github.com/ryanontheinside/ComfyUI-Misc-Effects.git

if [ ! -d "/ComfyUI/custom_nodes/ComfyUI-SAM2-Realtime" ]; then
    git clone https://github.com/pschroedl/ComfyUI-SAM2-Realtime.git
    cd /ComfyUI/custom_nodes/ComfyUI-SAM2-Realtime 

    # Install requirements as ComfyUI
    pip install -r requirements.txt

    # Install requirements as ComfyStream
    /root/miniconda3/envs/comfystream/bin/pip install -r requirements.txt
    cd ..
else
    echo "Directory /ComfyUI/custom_nodes/ComfyUI-SAM2-Realtime already exists. Skipping clone and requirements install."
fi

if [ ! -d "/ComfyUI/custom_nodes/ComfyUI-Depth-Anything-Tensorrt" ]; then
    git clone https://github.com/yuvraj108c/ComfyUI-Depth-Anything-Tensorrt.git
    cd ComfyUI-Depth-Anything-Tensorrt 

    # Install requirements as ComfyUI
    pip install -r requirements.txt

    # Install requirements as ComfyStream
    /root/miniconda3/envs/comfystream/bin/pip install -r requirements.txt
    cd ..
else
    echo "Directory /ComfyUI/custom_nodes/ComfyUI-Depth-Anything-Tensorrt already exists. Skipping clone and requirements install."
fi

if [ ! -d "/ComfyUI/custom_nodes/ComfyUI_RyanOnTheInside" ]; then
    git clone https://github.com/ryanontheinside/ComfyUI_RyanOnTheInside.git
    cd ComfyUI_RyanOnTheInside

    # Install requirements as ComfyUI
    pip install -r requirements.txt

    cd ..
else
    echo "Directory /ComfyUI/custom_nodes/ComfyUI_RyanOnTheInside already exists. Skipping clone and requirements install."
fi

# Add additonal nodes here

