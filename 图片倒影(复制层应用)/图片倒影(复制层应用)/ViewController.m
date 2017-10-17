//
//  ViewController.m
//  图片倒影(复制层应用)
//
//  Created by 万艳勇 on 2017/10/17.
//  Copyright © 2017年 SKOrganization. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageV;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CAReplicatorLayer *repL = (CAReplicatorLayer *)self.view.layer;
    repL.instanceCount = 2;
    repL.position = CGPointMake(self.view.bounds.size.width * 0.5, self.view.bounds.size.height * 0.5);
    // 绕着复制层的锚点旋转
    repL.instanceTransform = CATransform3DMakeRotation(M_PI, 1, 0, 0);
    // 阴影
    repL.instanceRedOffset -= 0.2;
    repL.instanceGreenOffset -= 0.2;
    repL.instanceBlueOffset -= 0.2;
    repL.instanceAlphaOffset -= 0.1;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
