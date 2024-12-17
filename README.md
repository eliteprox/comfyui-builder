# Installation
## Build development container
```
cd .devcontainer && docker build -f Dockerfile.base -t comfyui-builder:base-latest .
 ```
Re-load `comfyui-builder` folder as a devcontainer in vscode

### Install Nodes
From the devcontainer:
```
./install-nodes.sh
```

### Build Tensorrt engines
From the devcontainer:
```
conda activate comfystream
./build-tensorrt.sh
```

# ComfyStream and ComfyUI
## Run ComfyStream
```
conda activate comfystream
cd /comfystream
python server/app.py --workspace ../ComfyUI --media-ports=5678 --host=0.0.0.0
```

## Run ComfyUI
```
cd /ComfyUI && python /ComfyUI/main.py --listen
``` 
