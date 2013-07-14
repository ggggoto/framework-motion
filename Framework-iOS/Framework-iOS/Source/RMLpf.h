//
//  RMLpf.h
//  Framework-iOS
//
//  Created by 都筑 友昭 on 2013/07/14.
//  Copyright (c) 2013年 DB-Interactive. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XlManager.h"

@protocol RMLpfDelegate <NSObject>
- (void)LpfUpdate:(float)rms;
@end

@interface RMLpf : NSObject<XlManagerDelegate>

@property (assign, nonatomic) id<RMLpfDelegate> delegate;

- (void) startLpf;

@end
