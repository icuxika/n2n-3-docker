# n2n 3.0 Stable docker

## 拉取镜像

```
docker pull icuxika/n2n_3_0:3.0-stable
```

## 快速使用

```
docker run -p 7654:7654 -p 7654:7654/udp -p 5645:5645/udp --rm -ti icuxika/n2n_3_0:3.0-stable
```

## 本地构建

```
docker build . -t icuxika/n2n_3_0:3.0-stable
docker tag icuxika/n2n_3_0:3.0-stable icuxika/n2n_3_0:3.0-stable
```

## 客户端使用说明

### Windows 11

### Intel macOS

#### 下载解压后执行里面的 pkg 安装包

[tuntap_20150118.tar.gz](https://sourceforge.net/projects/tuntaposx/files/tuntap/20150118/)

```
sudo ./edge -a 192.168.200.25 -c icuxika -k icuxika -l xxxx.com:7654
```

### M 芯片的 MacBook 参考[https://github.com/ntop/n2n/issues/935](https://github.com/ntop/n2n/issues/935)

```
To use OmniEdge on MacOS, please instal Tun/Tap Driver first

3.1 Install Tun/Tap Driver:
For Intel Mac:
Download tuntap driver from https://sourceforge.net/projects/tuntaposx/files/latest/download
Extract tuntap_20150118.tar.gz and Install tuntap by running tuntap_20150118.pkg
For M1 Mac user:
Download https://github.com/Tunnelblick/Tunnelblick/tree/master/third_party/tap-notarized.kext
Download https://github.com/Tunnelblick/Tunnelblick/tree/master/third_party/tun-notarized.kext
Change the name to tap.kext and tap.kext,
Copy to /Library/Extensions
add net.tunnelblick.tap.plist and net.tunnelblick.tun.plist to /Library/LaunchDaemons/
```

## cmake 构建

> 执行`cmake --install`会提示`doc`目录下的文件拷贝失败，可以不用管它

```
cmake -S . -B build -DCMAKE_INSTALL_PREFIX=/Users/icuxika/CommandLineTools/n2n-3.0
cmake --build build --config Release
cmake --install build
```
