### Dataset Lifecycle

Every dataset used in this repository has 3 stages in its processing lifecycle.

* Download
* Cleaning and Processing
* Split-creation

### Folder Structure

I have followed this structure for storing datasets. You may retain this or use your own structure. Recommended to retain.

```bash
datasets/
└── vinbigdata/
    ├── processed/
    ├── raw/
    ├──── vinbigdata-chest-xray-abnormalities-detection.zip
    ├──── :
    ├──── :
```

### VinBigData X-ray Dataset

1. **Download the dataset**

Set the dataset folder (`DATA_DIR`) in `datasets/download/vinbigdata.sh` and download using
```bash
bash datasets/download/vinbigdata.sh
```
This will download dataset at the `DATA_DIR` location you specify.

2. **Cleaning and Processing**

Coming soon!