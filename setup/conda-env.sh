version=$(conda -V)
echo "=> Using conda version: "$version

conda create --name xray python=3.7
conda activate xray