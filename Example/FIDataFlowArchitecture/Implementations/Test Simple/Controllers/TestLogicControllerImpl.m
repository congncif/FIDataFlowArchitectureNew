//
//  TestLogicControllerImpl.m
//  Demo
//
//  Created by NGUYEN CHI CONG on 8/5/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "TestLogicControllerImpl.h"

@implementation TestLogicControllerImpl

- (Cancellable)prepareSignalWithParameters:(id)parameters completion:(void (^)(id data, NSError *))compeltion{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_global_queue(0, 0), ^{
        NSDictionary *testInfo = @{
                                   @"title": @"Test Title",
                                   @"desc": @"Test Description"
                                   };
        
        if (compeltion) {
            compeltion(testInfo, nil);
        }
    });
    
    return ^{};
}

@end
