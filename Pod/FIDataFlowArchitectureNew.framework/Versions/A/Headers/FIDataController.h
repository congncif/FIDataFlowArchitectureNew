//
//  FIDataController.h
//  Demo
//
//  Created by NGUYEN CHI CONG on 8/4/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FIBaseController.h"

/**
 *  Data controller handle process data. Data return by Logic controller is transformed to a object of FIBaseModel type by default.
 */
@interface FIDataController : FIBaseController

- (id _Nullable)tranformDataIfNeed:(nullable id)data error: (NSError * _Nullable * _Nullable)error;
- (NSString * _Nonnull)classNameForReturnData;

@end
