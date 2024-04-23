# ## HQ-sam
# export CUDA_VISIBLE_DEVICES=4
# python grounded_sam_demo.py \
#     --config GroundingDINO/groundingdino/config/GroundingDINO_SwinT_OGC.py \
#     --grounded_checkpoint ../checkpoints/groundingdino_swint_ogc.pth \
#     --sam_hq_checkpoint ../checkpoints/sam_hq_vit_h.pth \
#     --sam_version "vit_h" \
#     --use_sam_hq \
#     --box_threshold 0.3 \
#     --text_threshold 0.25 \
#     --device "cuda" \
#     --input_image /shared/nas2/wangz3/ECOLE_video_project/Cutie/examples/images/bike/00000.jpg \
#     --output_dir "outputs/bike-hq-sam" \
#     --text_prompt "person. bike."


# ## original sam
# export CUDA_VISIBLE_DEVICES=4
# python grounded_sam_demo.py \
#     --config GroundingDINO/groundingdino/config/GroundingDINO_SwinT_OGC.py \
#     --grounded_checkpoint ../checkpoints/groundingdino_swint_ogc.pth \
#     --sam_checkpoint ../checkpoints/sam_vit_h_4b8939.pth \
#     --sam_version "vit_h" \
#     --box_threshold 0.3 \
#     --text_threshold 0.25 \
#     --device "cuda" \
#     --input_image /shared/nas2/wangz3/ECOLE_video_project/Cutie/examples/images/bike/00000.jpg \
#     --output_dir "outputs/bike-ori-sam" \
#     --text_prompt "person. bike."


export CUDA_VISIBLE_DEVICES=4
python automatic_label_ram_demo.py \
    --config GroundingDINO/groundingdino/config/GroundingDINO_SwinT_OGC.py \
    --ram_checkpoint ../checkpoints/ram_swin_large_14m.pth \
    --grounded_checkpoint ../checkpoints/groundingdino_swint_ogc.pth \
    --sam_checkpoint ../checkpoints/sam_vit_h_4b8939.pth \
    --input_image assets/demo9.jpg \
    --output_dir "outputs" \
    --box_threshold 0.25 \
    --text_threshold 0.2 \
    --iou_threshold 0.5 \
    --device "cuda"