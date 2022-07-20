echo -n "Enter your python command (python / python3): "
read PYTHON
rm -rf build/
mkdir build
$PYTHON ./src/approval.py > ./build/approval.teal
$PYTHON ./src/clear.py > ./build/clear.teal