## Build development container
```
cd .devcontainer && docker build -f Dockerfile.base -t comfyui-builder:base-latest .
 ```
Re-load the folder as a devcontainer in vscode

## Run ComfyStream
```
cd /comfystream && conda activate comfystream
python server/app.py --workspace ../ComfyUI --media-ports=5678 --host=0.0.0.0
```

## Run ComfyUI
```cd /ComfyUI && python /ComfyUI/main.py --listen``` 
