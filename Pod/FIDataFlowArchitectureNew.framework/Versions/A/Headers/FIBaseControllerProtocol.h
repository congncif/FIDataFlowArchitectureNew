//
//  FIBaseControllerProtocol.h
//  Demo
//
//  Created by NGUYEN CHI CONG on 8/4/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import <ReactiveCocoa/ReactiveCocoa.h>

typedef void(^Cancellable)();

@protocol FIBaseControllerProtocol <NSObject>

- (id _Nullable)tranformDataIfNeed:(nullable id)data error: (NSError * _Nullable * _Nullable)error;
- (nonnull Cancellable) prepareSignalWithParameters: (nullable id)parameters completion: (nonnull void(^)(id _Nullable, NSError * _Nullable))completion;
- (RACSignal* _Nullable) singalWithParameters: (nullable id)parameters;

@optional
/**
 *  Implement this method to identify class for returned data
 *
 *  @return class Name
 */
- (NSString * _Nonnull)classNameForReturnData;

@end
