//
//  FIBaseIntegrateControllerProtocol.h
//  Demo
//
//  Created by NGUYEN CHI CONG on 8/4/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "FIBaseControllerProtocol.h"
#import "FIBasePresentControllerProtocol.h"

@protocol FIBaseIntegrateControllerProtocol <NSObject>

@property (nonatomic, strong) __nonnull id<FIBaseControllerProtocol> logicController;
@property (nonatomic, strong) __nonnull id<FIBaseControllerProtocol> dataController;

/**
 Use this method to start a flow.
 */
- (void)startFlowWithParameters: (nullable id)parameters;

/**
 This method is not suitable to start a flow with runningType = DefaultRunning
 */
- (RACSignal * _Nullable) startFlowWithInput: (nullable id)inputData;

@end
