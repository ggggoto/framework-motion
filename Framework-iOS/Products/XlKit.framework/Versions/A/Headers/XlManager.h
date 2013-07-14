//
//  XlManager.h
//  Framework-iOS
//
//  Created by 都筑 友昭 on 2013/07/14.
//  Copyright (c) 2013年 DB-Interactive. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreMotion/CoreMotion.h>

@protocol XlManagerDelegate <NSObject>
- (void)xlUpdate:(float)rms;
@end

@interface XlManager : NSObject

@property (assign, nonatomic) id<XlManagerDelegate> delegate;
@property (readonly) CMMotionManager *manager;
@property (readonly) float x;
@property (readonly) float y;
@property (readonly) float z;
@property (readonly) float rms;

- (void) initializeWithFrequency:(float)updateFrequency;
- (void) startxl;
- (void) stopxl;

@end
