//
//  VCView.m
//  图片倒影(复制层应用)
//
//  Created by 万艳勇 on 2017/10/17.
//  Copyright © 2017年 SKOrganization. All rights reserved.
//

#import "VCView.h"

@implementation VCView

//返回当前View内部layer的类型
+ (Class)layerClass{
    return [CAReplicatorLayer class];
}

@end
