#!/bin/bash
file="$1"
python evaluate_cityscapes.py --restore-from "$file"
python compute_iou.py ./data/Cityscapes/gtFine/val result/cityscapes


python evaluate_RSI.py --restore-from ./snapshots_ssl/MassBuilding2Inria/MassBuilding2Inria_100000.pth
python compute_IoU_RSI.py --gt_dir /home/yb/dataset/IAILD/SegmentationClass/ --pred_dir ./result/MassBuilding2Inria_deeplabv3+ --devkit_dir dataset/Inria_list
python compute_IoU_RSI.py --gt_dir /home/yb/dataset/Massachusetts_Building_dataset/SegmentationClass/ --pred_dir ./result/Inria2MassBuilding_deeplabv3+ --devkit_dir dataset/MassBuilding_list
python compute_IoU_RSI.py --gt_dir /home/yb/dataset/DeepGlobe/SegmentationClass/ --pred_dir ./result/MassRoad2DeepGlobe_deeplabv3+ --devkit_dir dataset/DeepGlobe_list
python compute_IoU_RSI.py --gt_dir /home/yb/dataset/Massachusetts_Road_dataset/SegmentationClass_cleannull/ --pred_dir ./result/DeepGlobe2MassRoad_deeplabv3+ --devkit_dir dataset/MassRoad_list
