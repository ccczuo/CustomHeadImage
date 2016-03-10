//
//  MyView.m
//  头
//
//  Created by 楚晨晨 on 16/2/23.
//  Copyright © 2016年 楚晨晨. All rights reserved.
//

#import "MyView.h"
#import <QuartzCore/QuartzCore.h>

@implementation MyView

- (void)drawRect:(CGRect)rect{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGFloat width =30;
    CGContextSetRGBStrokeColor(context,1,1,1,1.0);
    CGContextSetLineWidth(context, 4);
   
    CGContextAddArc(context,self.frame.size.width/2, self.frame.size.width/2, (self.frame.size.width/2)-10, 0, 2*M_PI, 0);
    CGContextDrawPath(context, kCGPathStroke);
    UIImageView *mimageview = [[UIImageView alloc]init];
    mimageview.image=[UIImage imageNamed:self.imageName];
    CGSize size = CGSizeMake(self.frame.size.width-width, self.frame.size.width-width);
    
    CGRect r = self.frame;
    r.size.width = size.width;
    r.size.height = size.height;
    r.origin.x = width/2;
    r.origin.y=width/2;
    mimageview.frame=r;
    mimageview.layer.cornerRadius=(self.frame.size.width-width)/2;
    mimageview.layer.masksToBounds=YES;
    [self addSubview:mimageview];
    
    
}


@end
