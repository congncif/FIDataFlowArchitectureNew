//
//  FILogicController.h
//  Demo
//
//  Created by NGUYEN CHI CONG on 8/4/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FIBaseController.h"

/**
 *  Logic controller handle fetch data/recevice response of an action. Data return by RACSignal is transformed to NSDictionary by default. When override method singalWithParameters: make sure it returns a dictionary to subcriber.
 */
@interface FILogicController : FIBaseController

/**
 *  Data returned from fetcher will be transformed to a dictionary or array
 *
 *  @param data  : original data returned from fetcher
 *  @param error : error from fetcher
 *
 *  @return dictionary or array
 */
- (id _Nullable)tranformDataIfNeed:(nullable id)data error: (NSError * _Nullable * _Nullable)error;

/**
 *  Using key to wrap returned data: array -> dictionary
 *
 *  @return string key for array data in dictionary: { <key>: <array data>}, return nil if don't want to wrap array data
 */
- (NSString * _Nullable ) keyForAutoWrapArrayData;

- (NSString * _Nonnull)classNameForReturnData;

@end
