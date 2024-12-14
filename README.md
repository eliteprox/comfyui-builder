## Build development container
cd .devcontainer
docker build --no-cache -f Dockerfile.base -t comfyui-builder:base-latest .
docker build --no-cache -f Dockerfile.custom-nodes -t comfyui-builder:custom-nodes .
docker build --no-cache -f Dockerfile .



docker image rm comfyui-builder:base-latest
docker build --no-cache -f Dockerfile.base -t comfyui-builder:base-latest .
