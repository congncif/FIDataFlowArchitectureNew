//
//  FIBasePresentController.h
//  Demo
//
//  Created by NGUYEN CHI CONG on 8/4/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FIBasePresentControllerProtocol.h"

@interface FIBasePresentController : NSObject<FIBasePresentControllerProtocol>

@property (nonatomic, copy) void (^ _Nullable onNext)(id _Nullable value);
@property (nonatomic, copy) void (^ _Nullable onError)(NSError * _Nullable error);
@property (nonatomic, copy) void (^ _Nullable onCompleted)();
@property (nonatomic, copy) void (^ _Nullable didSubscribe)();
@property (nonatomic, copy) void (^ _Nullable didDispose)();

/**
 Default using completedBlock for cancel
 */

- (void)setUpDidSubscribe: (nullable void(^)())didSubscribeBlock
                     next: (nullable void(^)(id _Nullable value))nextBlock
                    error: (nullable void(^)(NSError * _Nullable error))errorBlock
               completion: (nullable void(^)())completedBlock;
+ (nonnull instancetype)presentDidSubscribe: (nullable void(^)())didSubscribeBlock withNext:(nullable void (^)(id _Nullable x))next error:(nullable void (^)(NSError * _Nullable error))error completed:(nullable void (^)(void))completed didDispose: (nullable void(^)())didDisposeBlock;

@end
