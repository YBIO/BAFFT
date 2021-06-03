# This is the official repo of "Birds of A Feather Flock Together"

Bo Yuan, Danpei Zhao, Shuai Shao, Zehuan Yuan, Changhu Wang. Birds of A Feather Flock Together: Categort-Divergence Guidance for Domain Adaptive Segmentation



# Preparation

`` 
git clone git@github.com:Shang-XH/BAFTT.git   <br> 
cd BAFFT/  
``

### install inplace-abn
``
pip install inplace-abn
``

### install apex

`` 
git clone https://github.com/NVIDIA/apex  
cd apex   
pip setup.py install 
``

### Prepare Dataset

Download [Cityscapes](https://www.cityscapes-dataset.com/), [CycleGAN transferred GTA5](https://drive.google.com/open?id=1OBvYVz2ND4ipdfnkhSaseT8yu2ru5n5l) and [gta5 labels](https://drive.google.com/file/d/11E42F_4InoZTnoATi-Ob1yEHfz7lfZWg/view?usp=sharing). Symbolic link them under ``data`` folder: 

``
ln -s path_to_Cityscapes_folder ./data/Cityscapes  
ln -s path_to_gta5_deeplab_folder ./data/gta5_deeplab  
ln -s path_to_gta5_labels_folder ./data/gta5_deeplab/labels  
``



# >>>Quick Start<<<
## GTA5→Cityscapes:
### Train and Validation: 

``
CUDA_VISIBLE_DEVICES=0 python train_sim_ssl.py 
``


### Inference & Evaluation

``
file="$1" 
python evaluate_cityscapes.py --restore-from "$file" 
python compute_iou.py ./data/Cityscapes/gtFine/val result/cityscapes
``

###>>> 

