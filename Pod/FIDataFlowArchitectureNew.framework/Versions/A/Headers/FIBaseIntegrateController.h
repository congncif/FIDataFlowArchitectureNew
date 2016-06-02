//
//  FIBaseIntegrateController.h
//  Demo
//
//  Created by NGUYEN CHI CONG on 8/4/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FIBaseIntegrateControllerProtocol.h"

typedef NS_OPTIONS(NSInteger, FIFlowRunningType) {
    FIFlowRunningTypeDefault,
    FIFlowRunningTypeOnly,
    FIFlowRunningTypeLastest,
    FIFlowRunningTypeQueue
};

@interface FIBaseIntegrateController : NSObject<FIBaseIntegrateControllerProtocol>

@property (nonatomic, strong) __nonnull id<FIBaseControllerProtocol> logicController;
@property (nonatomic, strong) __nonnull id<FIBaseControllerProtocol> dataController;

@property (nonatomic, readonly) BOOL running;
@property (nonatomic, assign) FIFlowRunningType runningType;

- (instancetype _Nonnull)initWithDataClass: (nullable Class)DataClass
                                logicClass: (nullable Class)LogicClass
                                     start: (nullable void(^)())startBlock
                                      next: (nullable void(^)(id _Nullable value))nextBlock
                                     error: (nullable void(^)(NSError * _Nullable error))errorBlock
                                completion: (nullable void(^)())completedBlock
                                       end: (nullable void(^)())endBlock;

+ (instancetype _Nonnull)newControllerWithDataClass: (nullable Class)DataClass
                                         logicClass: (nullable Class)LogicClass
                                              start: (nullable void(^)())startBlock
                                               next: (nullable void(^)(id _Nullable value))nextBlock
                                              error: (nullable void(^)(NSError * _Nullable error))errorBlock
                                         completion: (nullable void(^)())completedBlock
                                                end: (nullable void(^)())endBlock;

+ (instancetype _Nonnull)newControllerWithLogicClass: (nullable Class)LogicClass
                                               start: (nullable void(^)())startBlock
                                                next: (nullable void(^)(id _Nullable value))nextBlock
                                               error: (nullable void(^)(NSError * _Nullable error))errorBlock
                                          completion: (nullable void(^)())completedBlock
                                                 end: (nullable void(^)())endBlock;

/**
 *  Block is called on safe thread when flow begin procssing
 *
 *  @param startBlock task perfrom when start a flow
 */
- (void)setStartBlock:(nullable void(^)())startBlock;

/**
 *  Block is called on background thread when flow return a value and go to next processing a flow
 *
 *  @param nextBlock
 */
- (void)setNextProcessingBlock: (nullable void(^)(id _Nullable value))nextBlock;

/**
 *  Block is called on safe thread when flow finished processing, before error / completion will be called
 *
 *  @param endBlock
 */
- (void)setEndBlock: (nullable void(^)())endBlock;

/**
 *  Block is called on safe thread when the error occurred in flow processing, this will called after endBlock
 *
 *  @param errorBlock
 */
- (void)setErrorBlock: (nullable void(^)(NSError * _Nullable error))errorBlock;

/**
 *  Block is called on safe thread when flow complete processing (no error), this will called after endBlock
 *
 *  @param completedBlock
 */
- (void)setCompletionBlock: (nullable void(^)())completedBlock;

/**
 *  Block is called on safe thread when flow begin procssing
 */
- (void(^ _Nullable)())startBlock;

/**
 *  Block is called on background thread when flow return a value and go to next processing a flow
 */
- (void(^ _Nullable)(id _Nullable))nextProcessingBlock;

/**
 *  Block is called on safe thread when the error occurred in flow processing, this will called after endBlock
 */
- (void(^ _Nullable)(NSError * _Nullable))errorBlock;

/**
 *  Block is called on safe thread when flow complete processing (no error), this will called after endBlock
 */
- (void (^ _Nullable)())completionBlock;


/**
 *  Block is called on safe thread when flow finished processing, before error / completion will be called
 */
- (void (^ _Nullable)())endBlock;
/**
 Use this method to start a flow.
 */
- (void)startFlowWithParameters: (nullable id)parameters;

/**
 This method is not suitable to start a flow with runningType = DefaultRunning
 */
- (RACSignal * _Nullable) startFlowWithInput: (nullable id)inputData;

- (void)cancelAllFlows;


@end
