//
//  ViewController.m
//  CarouselFigure
//
//  Created by MyMac on 15/9/22.
//  Copyright © 2015年 MyMac. All rights reserved.
//

#import "ViewController.h"
#import "CycleScrollView.h"

@interface ViewController ()<CycleScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSArray *imagesURLStrings = @[
                                  @"https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=a4b3d7085dee3d6d2293d48b252b5910/0e2442a7d933c89524cd5cd4d51373f0830200ea.jpg",
                                  @"https://ss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=a41eb338dd33c895a62bcb3bb72e47c2/5fdf8db1cb134954a2192ccb524e9258d1094a1e.jpg",
                                  @"http://c.hiphotos.baidu.com/image/w%3D400/sign=c2318ff84334970a4773112fa5c8d1c0/b7fd5266d0160924c1fae5ccd60735fae7cd340d.jpg"
                                  ];
    
    CGFloat w = self.view.bounds.size.width;
    //网络加载 --- 创建带标题的图片轮播器
    CycleScrollView *cycleScrollView2 = [CycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 20, w, 180) imageURLStringsGroup:nil]; // 模拟网络延时情景
    cycleScrollView2.pageControlAliment = CycleScrollViewPageContolAlimentCenter;
    cycleScrollView2.delegate = self;
    //    cycleScrollView2.titlesGroup = titles;
    //    cycleScrollView2.autoScroll = NO;
    cycleScrollView2.dotColor = [UIColor blueColor]; // 自定义分页控件小圆标颜色
    cycleScrollView2.indicatorDotColor = [UIColor grayColor];
    cycleScrollView2.pageControlStyle = CycleScrollViewPageContolStyleClassic;
    cycleScrollView2.placeholderImage = [UIImage imageNamed:@"placeholder"];
    cycleScrollView2.imageURLStringsGroup = imagesURLStrings;
    [self.view addSubview:cycleScrollView2];
    
}

- (void)cycleScrollView:(CycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index{
    NSLog(@"index===%ld",(long)index);
}

@end
