#!/bin/bash
#NOTE: Run `conda activate comfystream` before running this script

cd "/ComfyUI/custom_nodes/ComfyUI-Depth-Anything-Tensorrt"
wget -O depth_anything_v2_vitb.onnx https://huggingface.co/yuvraj108c/Depth-Anything-2-Onnx/resolve/main/depth_anything_v2_vitb.onnx?download=true
pip install -r requirements.txt
python export_trt.py

#Copy engine to model directory for ComfyUI workspace
mkdir -p /ComfyUI/models/tensorrt/depth-anything/
mv depth_anything_v2_vitb-fp16.engine /ComfyUI/models/tensorrt/depth-anything/

# TODO: setup local models folder
# mkdir -p /ComfyUI/models/custom-models/tensorrt/depth-anything