//
//  XlManager.m
//  Framework-iOS
//
//  Created by 都筑 友昭 on 2013/07/14.
//  Copyright (c) 2013年 DB-Interactive. All rights reserved.
//

#import "XlManager.h"
#import <CoreMotion/CoreMotion.h>

@implementation XlManager

- (void) initializeWithFrequency:(float)updateFreqnency
{
    
    _manager = [[CMMotionManager alloc] init];
    
    if (_manager.accelerometerAvailable) {
        _manager.accelerometerUpdateInterval = 1/updateFreqnency;
        
    }
    
}

- (void) startxl
{
    CMAccelerometerHandler handler = ^(CMAccelerometerData *data, NSError *error) {
        _x = data.acceleration.x;
        _y = data.acceleration.y;
        _z = data.acceleration.z;
        _rms = sqrt(_x*_x + _y*_y + _z*_z);
        [_delegate xlUpdate:_rms];
    };
    [_manager startAccelerometerUpdatesToQueue:[NSOperationQueue currentQueue] withHandler:handler];
}

- (void) stopxl
{
    if (_manager.accelerometerActive) {
        [_manager stopAccelerometerUpdates];
    }
}

- (void) dealloc
{
    [_delegate release];
    [_manager release];
    [super dealloc];
}

@end
