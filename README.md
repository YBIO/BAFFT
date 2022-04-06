<img src="illustration/AIRVIC.png" width="100px">

# Official code of "Birds of A Feather Flock Together"

### Birds of A Feather Flock Together: Category-Divergence Guidance for Domain Adaptive Segmentation. *IEEE Transactions on Image Processing*, 2022.

Bo Yuan<sup>1,2</sup>, Danpei Zhao<sup>1,2*</sup>, Shuai Shao<sup>3</sup>, Zehuan Yuan<sup>3</sup>, Changhu Wang<sup>3</sup>.

<sup>1</sup> <sub>Image Processing Center, BUAA</sub><br />
<sup>2</sup> <sub>Airvic Lab</sub><br />
<sup>3</sup> <sub>ByteDance AI-Lab</sub><br />


[Paper link](https://ieeexplore.ieee.org/document/9745831)
## Abstract

Unsupervised domain adaptation (UDA) aims to enhance the generalization capability of a certain model from a source domain to a target domain. Present UDA models focus on alleviating the domain shift by minimizing the feature discrepancy between the source domain and the target domain but usually ignore the class confusion problem.  In this work, we propose an Inter-class Separation and Intra-class Aggregation (ISIA) mechanism. It encourages the cross-domain representative consistency between the same categories and differentiation among diverse categories.  In this way, the features belonging to the same categories are aligned together and the confusable categories are separated. By measuring the align complexity of each category, we design an Adaptive-weighted Instance Matching (AIM) strategy to further optimize the instance-level adaptation. Based on our proposed methods, we also raise a hierarchical unsupervised domain adaptation framework for cross-domain semantic segmentation task. Through performing the image-level, feature-level, category-level and instance-level alignment, our method achieves a stronger generalization performance of the model from the source domain to the target domain. In two typical cross-domain semantic segmentation tasks, i.e., GTA5 to Cityscapes and SYNTHIA to Cityscapes, our method achieves the state-of-the-art segmentation accuracy. We also build two cross-domain semantic segmentation datasets based on the publicly available data, i.e., remote sensing building segmentation and road segmentation, for domain adaptive segmentation.

![algorithm](illustration/motivation.png)

### Update 2022-03-20

### Preparation
```python
git clone https://github.com/HibiscusYB/BAFFT.git     
cd BAFFT
```


### install inplace-abn
```python
pip install inplace-abn  
```

### install apex
```python
git clone https://github.com/NVIDIA/apex 
cd apex/      
pip setup.py install   
```

### Prepare Dataset

Download [Cityscapes](https://www.cityscapes-dataset.com/), [CycleGAN transferred GTA5](https://drive.google.com/open?id=1OBvYVz2ND4ipdfnkhSaseT8yu2ru5n5l) and [gta5 labels](https://drive.google.com/file/d/11E42F_4InoZTnoATi-Ob1yEHfz7lfZWg/view?usp=sharing). Symbolic link them under ``data`` folder: 

```python
ln -s path_to_Cityscapes_folder ./data/Cityscapes   
ln -s path_to_gta5_deeplab_folder ./data/gta5_deeplab    
ln -s path_to_gta5_labels_folder ./data/gta5_deeplab/labels       
```


### pretrained models
Download models and put them in ``./pretrained`` folder

BaiduNetDesk:
link: ``https://pan.baidu.com/s/1n_l9kJNFda5vNTKDE7b92g ``  
fetch code: j5a3     

Google Drive:
`` 
https://drive.google.com/drive/u/0/folders/1pMf0nQ5eawmGHlSQ9FWmHgboROtCfbFk 
``

## Quick Start
### GTA5 to Cityscapes:
#### Train: 
#### Step 1
```python
CUDA_VISIBLE_DEVICES=0 python train_step1.py  
python Generate_Pseudo_Label.py   
```
#### Step 2
```python
CUDA_VISIBLE_DEVICES=0 python train_step2.py  
```

### Inference & Evaluation
```python
python evaluate_cityscapes.py --restore-from ./pretrained/GTA2Cityscapes/GTA5_Best.pth   
python compute_iou.py ./data/Cityscapes/gtFine/val result/cityscapes   
```


## Results
### GTA5 to Cityscapes
![GTA5 to Cityscapes](illustration/GTA5toCityscapes.png)
### SYNTHIA to Cityscapes
![SYNTHIA to Cityscapes](illustration/SYNTHIAtoCityscapes.png)
### Visualizations
![Visualizations](illustration/visualization_GTA-Cityscapes.png)
![Visualizations](illustration/visualization_IAILD-MBD.png)
![Visualizations](illustration/visualization_DeepGlobe-MRD.png)


## License
<img src="illustration/AIRVIC.png" width="70px"> *All Rights Reserved*
