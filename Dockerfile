FROM runpod/worker-comfyui:5.5.0-base
# Combine node installs into a single layer to reduce image size and number of 
RUN comfy node install --exit-on-fail ComfyUI-Crystools
RUN comfy node install --exit-on-fail git+https://github.com/silveroxides/ComfyUI_Gemini_Expanded_API.git
RUN comfy node install --exit-on-fail git+https://github.com/silveroxides/ComfyUI_Hybrid-Scaled_fp8-Loader.git   
RUN comfy node install --exit-on-fail python-interpreter-node@2.1.0
RUN comfy node install --exit-on-fail comfyui-custom-scripts@1.2.5
RUN comfy node install --exit-on-fail controlaltai-nodes@1.1.4
RUN comfy node install --exit-on-fail derfuu_comfyui_moddednodes@1.0.1
RUN comfy node install --exit-on-fail was-node-suite-comfyui@1.0.2
RUN comfy node install --exit-on-fail comfyui-utils-nodes@1.3.9
RUN comfy node install --exit-on-fail ComfyUI-GGUF@1.1.5
RUN comfy node install --exit-on-fail RES4LYF
RUN comfy node install --exit-on-fail rgthree-comfy@1.0.2510052058
RUN comfy node install --exit-on-fail comfyui_tinyterranodes@2.0.9
RUN comfy model download --url https://huggingface.co/lodestones/Chroma/resolve/main/vae/diffusion_pytorch_model.safetensors --relative-path models/vae --filename ae.safetensors
RUN comfy model download --url https://huggingface.co/silveroxides/flan-t5-xxl-encoder-only-GGUF/resolve/main/flan-t5-xxl-Q8_0.gguf --relative-path models/clip --filename flan-t5-xxl-Q8_0.gguf
RUN comfy model download --url https://huggingface.co/silveroxides/Chroma-LoRAs/resolve/main/flash-heun-pruned/chroma-flash-heun_r80-fp32-pruned.safetensors --relative-path models/loras --filename chroma-flash-heun_r80-fp32-pruned.safetensors
RUN comfy model download --url https://huggingface.co/silveroxides/Chroma1-HD-fp8-scaled/resolve/main/Chroma1-HD-fp8_scaled_original_hybrid_large_rev2.safetensors --relative-path models/diffusion_models --filename Chroma1-HD-fp8_scaled_original_hybrid_large.safetensors
RUN comfy model download --url https://huggingface.co/nuclear-diffusion/Loras/resolve/main/chroma/instagramreality_v1_1.safetensors --relative-path models/loras --filename instagramreality_v1_1.safetensors
RUN comfy model download --url https://huggingface.co/Danrisi/Lenovo_UltraReal_Chroma/resolve/main/lenovo_chroma.safetensors --relative-path models/loras --filename Lenovo.safetensors
