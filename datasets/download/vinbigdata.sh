DATA_DIR=/efs/xray-detect/datasets/vinbigdata

mkdir -p $DATA_DIR
mkdir $DATA_DIR/raw/ $DATA_DIR/processed/

cd $DATA_DIR/raw/
kaggle competitions download -c vinbigdata-chest-xray-abnormalities-detection
unzip vinbigdata-chest-xray-abnormalities-detection.zip