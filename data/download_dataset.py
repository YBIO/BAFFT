import os
import sys

exec_1 = os.system('hdfs dfs -get hdfs://haruna/user/lab/yuanbo.1220/RSI_dataset/cityscapes.tar.gz ./data/')
print(exec_1)
exec_2 = os.system('tar -zxvf ./data/cityscapes.tar.gz ./data/')
print(exec_2)
exec_3 = os.system('hdfs dfs -get hdfs://haruna/user/lab/yuanbo.1220/RSI_dataset/gta5_deeplab.tar.gz ./data/')
print(exec_3)
exec_4 = os.system('tar -zxvf ./data/gta5_deeplab.tar.gz ./data/')
print(exec_4)
exec_5 = os.system('hdfs dfs -get hdfs://haruna/user/lab/yuanbo.1220/RSI_dataset/target_ssl_gt.tar.gz')
print(exec_5)
exec_6 = os.system('tar -zxvf target_ssl_gt.tar.gz')
print(exec_6)
exec_3 = os.system('hdfs dfs -get hdfs://haruna/user/lab/yuanbo.1220/RSI_dataset/syn_deeplab.tar.gz ./data/')
print(exec_3)
exec_4 = os.system('tar -zxvf ./data/syn_deeplab.tar.gz ./data/')


print('dataset_prepare, done.')