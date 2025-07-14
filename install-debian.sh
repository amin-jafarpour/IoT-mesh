sudo apt-get install git wget flex bison gperf python3 python3-pip python3-venv cmake ninja-build ccache libffi-dev libssl-dev dfu-util libusb-1.0-0

mkdir -p ~/esp

cd ~/esp

git clone -b v5.4.2 --recursive https://github.com/espressif/esp-idf.git

cd ~/esp/esp-idf

./install.sh esp32,esp32s3,esp8826

./install.sh all

echo $IDF_TOOLS_PATH

echo "

alias get_idf='. $HOME/esp/esp-idf/export.sh'" >> ~/.bashrc

source ~/.bashrc

echo "Now you can run get_idf to set up or refresh the esp-idf environment in any terminal session."








