<h1 align="center">
ZYCornerRadius <br>
一句代码，圆角风雨无阻
<h5 align="center">
A Category to make cornerRadius for UIImageView have no Offscreen-Rendered, be more efficiency  
避免为UIImageView设置圆角时触发离屏渲染所带来的性能损耗，两种工作方式：Category和UIImageView子类。
</h5>
</h1>
<br>
<p align="center">
<img src="https://img.shields.io/badge/pod-v0.9.2-blue.svg" />
<img src="https://img.shields.io/badge/build-passing-brightgreen.svg" />
<img src="https://img.shields.io/badge/language-objc-5787e5.svg" />
<img src="https://img.shields.io/badge/Advantage-Efficient-red.svg" />
<img src="https://img.shields.io/badge/license-MIT-brightgreen.svg" />

</p>
<br>

##CocoaPods:  
```
pod 'ZYCornerRadius', '~> 0.9.2'
``` 

<br>
##性能对比:  
测试设备6P，屏幕中有40张尺寸为20*20的小图片，使用masksToBounds切角处理时帧率大大下降至20+，使用ZYCornerRadius时帧率保持在57+，性能接近0损耗。  
![](https://raw.githubusercontent.com/liuzhiyi1992/MyStore/master/ZYCornerRadius/ZYCornerRadius%E6%80%A7%E8%83%BD%E5%AF%B9%E6%AF%94.png)    

内存使用对比:  
![](https://raw.githubusercontent.com/liuzhiyi1992/MyStore/master/ZYCornerRadius/%E5%86%85%E5%AD%98%E4%BD%BF%E7%94%A8%E5%AF%B9%E6%AF%94.jpg)  

![](https://raw.githubusercontent.com/liuzhiyi1992/MyStore/master/ZYCornerRadius/zycornerRadius%E6%96%B0demo%E6%BC%94%E7%A4%BA%E5%9B%BE%E7%89%87.jpg)   



<br>
##Usage:  

导入头文件  
```objc
#import "UIImageView+CornerRadius.h"
```
创建圆角半径为6的UIImageView(两种种方式)：  
```objc
//1
UIImageView *imageView = [[UIImageView alloc] initWithCornerRadiusAdvance:6.0f rectCornerType:UIRectCornerAllCorners];

//2
UIImageView *imageView = [[UIImageView alloc] init];
[imageView zy_cornerRadiusAdvance:6.0f rectCornerType:UIRectCornerAllCorners];
```
创建圆形的UIImageView(两种方式)：  
```objc
//1
UIImageView *imageView = [[UIImageView alloc] initWithRoundingRectImageView];

//2
UIImageView *imageView = [[UIImageView alloc] init];
[imageView zy_cornerRadiusRoundingRect];
```  
可为UIImageView的图片附加边框：
```objc
[imageView zy_attachBorderWidth:1.f color:[UIColor redColor]];
```
按你的需要完成配置后，任何时候对UIImageView setImage，效果都会生效
```objc
//anytime 
imageView.image = [UIImage imageNamed:@"mac_dog"];
```


<br>  
##iteration:  
0.9.2 - 修复 上版本制造的bug
0.9.1 - 处理 setImage发生在 frame计算之前(Masonry) 导致圆角无效的问题，此版本删除ZYImageView，统一使用UIImageView+CornerRadius  
0.8.1 - 解决更新图片时图片内容闪动问题。  
0.7.1 - 去除部分api，保持使用简洁的设计理念，加入带边框功能  
0.6.1 - 解决在TableViewCell被selected后，其中UIImageView的image被重置的问题  
0.5.1 - 解决SDWebImage使用placeholder为nil时发生的crash  
0.4.1 - 发布第一个较完善版本


<br>
##Relation:  
[@liuzhiyi1992](https://github.com/liuzhiyi1992) on Github  
[@Blog](http://zyden.vicp.cc/)  Welcome

<br>
##License:  
ZYCornerRadius is released under the MIT license. See LICENSE for details.
