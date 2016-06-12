//
//  ViewController.m
//  ZYCornerRadiusImageView
//
//  Created by lzy on 16/3/3.
//  Copyright © 2016年 lzy. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+CornerRadius.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
#pragma notification --- 本工具提供两种使用方式，UIImageView+CornerRadius较方便，若不喜欢使用Category方式则可以使用ZYImageView。
    
    
#pragma mark - 圆形
    UIImageView *imageView = [[UIImageView alloc] initWithRoundingRectImageView];
    [imageView setFrame:CGRectMake(130, 80, 150, 150)];
    [self.view addSubview:imageView];
    
    
    UIImageView *imageViewSecond = [[UIImageView alloc] initWithCornerRadiusAdvance:20.f rectCornerType:UIRectCornerBottomLeft | UIRectCornerTopRight];
    [imageViewSecond setFrame:CGRectMake(130, 280, 150, 150)];
    [self.view addSubview:imageViewSecond];
    
    
    UIImageView *imageViewThird = [[UIImageView alloc] initWithFrame:CGRectMake(130, 480, 150, 150)];
    [imageViewThird zy_cornerRadiusAdvance:20.f rectCornerType:UIRectCornerBottomRight | UIRectCornerTopLeft];
    [imageViewThird zy_attachBorderWidth:5.f color:[UIColor blackColor]];
    [self.view addSubview:imageViewThird];
    

#pragma mark - setImage anytime
    imageView.image = [UIImage imageNamed:@"mac_dog"];
    imageViewSecond.image = [UIImage imageNamed:@"mac_dog"];
    imageViewThird.image = [UIImage imageNamed:@"mac_dog"];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end


