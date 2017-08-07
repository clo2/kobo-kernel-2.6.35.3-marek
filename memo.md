

# 環境
- lubuntu16.04



- arm-linux-gnueabi-gcc-5以上は古いカーネルをビルドできない
  - バージョン指定なしでクロス環境構築するとgcc5になった
```
sudo apt-get install gcc-arm-linux-gnueabi
```

- 古いGCCをいれる
- apt-get install arm-linux-gnueabi-g++-4.9
- arm-linux-gnueabi-gccの切り替え
- update-alternativesに登録


```
sudo update-alternatives --install /usr/bin/arm-linux-gnueabi-gcc arm-linux-gnueabi-gcc /usr/bin/arm-linux-gnueabi-gcc-4.9 46 --slave /usr/bin/arm-linux-gnueabi-g++ arm-linux-gnueabi-g++ /usr/bin/arm-linux-gnueabi-g++-4.9 --slave /usr/bin/arm-linux-gnueabi-gcov arm-linux-gnueabi-gcov /usr/bin/arm-linux-gnueabi-gcov-4.9

sudo update-alternatives --install /usr/bin/arm-linux-gnueabi-gcc arm-linux-gnueabi-gcc /usr/bin/arm-linux-gnueabi-gcc-5 44 --slave /usr/bin/arm-linux-gnueabi-g++ arm-linux-gnueabi-g++ /usr/bin/arm-linux-gnueabi-g++-5 --slave /usr/bin/arm-linux-gnueabi-gcov arm-linux-gnueabi-gcov /usr/bin/arm-linux-gnueabi-gcov-5

```

- update-alternativesで古いGCCを選択
```
sudo update-alternatives --config arm-linux-gnueabi-gcc

```
------------------

uImage エラー
```
Can't use 'defined(@array)' (Maybe you should just omit the defined()?) at kernel/timeconst.pl line 373.
```
参照：http://shinshu.fm/MHz/39.23/archives/0000527798.html

修正前：if (!defined(@val)) {
修正後：if (!@val) {
