//
//  RMLpf.m
//  Framework-iOS
//
//  Created by 都筑 友昭 on 2013/07/14.
//  Copyright (c) 2013年 DB-Interactive. All rights reserved.
//

#import "RMLpf.h"
#import "XlManager.h"

#define updateRate 20.0f
#define a1 0.01
#define a2 0.99

@implementation RMLpf
{
    float old_val;
}

- (id)init:
{
	self = [super init];
	if (self != nil) {
		[self startLpf];
	}
	return self;
}

- (void) startLpf
{
    XlManager * xlManager = [[XlManager alloc]init];
    xlManager.delegate = self;
    [xlManager initializeWithFrequency:updateRate];
    [xlManager startxl];
    
    old_val = 0;
    
}

- (void) xlUpdate:(float)rms
{
    //IIR LPF
    float filtered = a1 * rms + a2 * old_val;
    old_val = rms;
    [_delegate LpfUpdate:filtered];
}

@end
