#!/usr/bin/env bash
wget https://transfer.sh/3rm5B/data2.tar.xz -O data.tar.xz
tar xvf data.tar.xz
unzip data/M2NIST/combined.npy.zip -d data/M2NIST
unzip data/M2NIST/segmented.npy.zip -d data/M2NIST/
export CUDA=cpu
echo '---------'
echo '---------'
echo ' INSTALLING Pytorch-Geo [==>...]'
echo '---------'
echo '---------'
pip install torch==1.4.0 torchvision==0.5.0
pip install https://files.pythonhosted.org/packages/35/d4/750403a8aa32cdb3d2d05849c6a10e4e0604de5e0cc94b81a0d0d69a75f3/torch_scatter-1.3.1.tar.gz
pip install https://files.pythonhosted.org/packages/b0/0a/2ff678e0d04e524dd2cf990a6202ced8c0ffe3fe6b08e02f25cc9fd27da0/torch_sparse-0.4.0.tar.gz
pip install https://files.pythonhosted.org/packages/bd/5f/01c5799cd1f81f9956f03a0e1d9a861e020a598dd411d9bd3c3c1dd5b8a4/torch_cluster-1.4.4.tar.gz
pip install https://files.pythonhosted.org/packages/3c/dd/daa9d0b7b2ede913e573876ae286a58ec296678858f2814ff6d6789b234f/torch_spline_conv-1.1.0.tar.gz
pip install https://files.pythonhosted.org/packages/e8/e2/4765baa17abf54c71ef5c8a9ad889c24c794b24b2a535ee84816780f2d39/torch_geometric-1.3.1.tar.gz

#pip install torch==1.7.0+cu101 torchvision==0.8.1+cu101 torchaudio==0.7.0 -f https://download.pytorch.org/whl/torch_stable.html
#pip install torch-scatter==latest+${CUDA} -f https://pytorch-geometric.com/whl/torch-1.7.0.html
#pip install torch-sparse==latest+${CUDA} -f https://pytorch-geometric.com/whl/torch-1.7.0.html
#pip install torch-cluster==latest+${CUDA} -f https://pytorch-geometric.com/whl/torch-1.7.0.html
#pip install torch-spline-conv==latest+${CUDA} -f https://pytorch-geometric.com/whl/torch-1.7.0.html
#pip install torch-geometric
echo '---------'
echo '---------'
echo ' INSTALLING Pytorch-Geo [  DONE   ]'
echo '---------'
echo '---------'


pip install -r requirements.txt
