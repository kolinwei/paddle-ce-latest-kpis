DIR="$( cd "$(dirname "$0")" ; pwd -P )"
cd "$DIR"

# Download the data.
cp labels/* data/pascalvoc/
cd data/pascalvoc

echo "Downloading..."
wget http://host.robots.ox.ac.uk/pascal/VOC/voc2012/VOCtrainval_11-May-2012.tar
wget http://host.robots.ox.ac.uk/pascal/VOC/voc2007/VOCtrainval_06-Nov-2007.tar
wget http://host.robots.ox.ac.uk/pascal/VOC/voc2007/VOCtest_06-Nov-2007.tar
# Extract the data.
echo "Extractint..."
tar -xf VOCtrainval_11-May-2012.tar
tar -xf VOCtrainval_06-Nov-2007.tar
tar -xf VOCtest_06-Nov-2007.tar

echo "Creating data lists..."
python create_list.py