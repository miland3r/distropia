# distropia
Distro Process Interface Application aka Distopia is a Qt based C++ application 
purpose built as a simple UI from which I can launch/manage my kvm instances 
with configuration for the relevant gpu(s) passed through, cpu pinning 
configuration and sound server setup.


## Requirements
You need Qt5 and CMake 3.5 or later.


# Building from Source
<details><summary>Linux</summary>
```
git clone https://github.com/miland3r/distropia.git ./distropia
cd ./distropia/build
cmake ../
make
./distropia
```
</details>
