
### Installing conda

You can run `conda -V` to check if you have `conda` installed. If not, you can follow instructions [here](https://docs.conda.io/projects/conda/en/4.6.1/user-guide/install/index.html).

### Create a conda environment

Use the script `conda-env.sh` to create and activate an environment named `xray`.
```bash
bash conda-env.sh
```

### Install dependencies

#### GPU Machine

Make sure CUDA 10.0 is your default cuda. To check your CUDA versions, run `ls /usr/local/cuda*`. If your CUDA 10.0 is installed in /usr/local/cuda-10.0, apply

```bash
export LD_LIBRARY_PATH=/usr/local/cuda-10.0/lib64
export PATH=$PATH:/usr/local/cuda-10.0/bin
```

Install PyTorch and dependencies
```bash
conda install pytorch torchvision torchaudio cudatoolkit=10.2 -c pytorch
pip install -r requirements.txt
```

#### CPU-only Machine

Install PyTorch and dependencies
```bash
conda install pytorch torchvision torchaudio cpuonly -c pytorch
pip install -r setup/requirements.txt
```

#### Installing special libraries

In order for `pydicom` to work as expected, you will need to do the following:

```bash
pip uninstall PILLOW
conda install -c conda-forge openjpeg
pip install PILLOW
```

#### Check installation
```bash
 python -c "import torch; import torchvision; import kornia; import cv2; import numpy"
```
This should run without any errors.

#### Update PYTHONPATH

```bash
export PYTHONPATH=$PWD
```

#### Setup Weights and Biases API Key

If you do not have a [W&B](https://wandb.ai/) account, please create one and obtain your API key from Settings and run:
```bash
export WANDB_API_KEY=<Your Key>
```