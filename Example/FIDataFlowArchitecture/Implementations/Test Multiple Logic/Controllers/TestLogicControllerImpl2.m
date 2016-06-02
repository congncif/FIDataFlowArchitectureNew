//
//  TestLogicController2.m
//  Demo
//
//  Created by NGUYEN CHI CONG on 8/5/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "TestLogicControllerImpl2.h"

@implementation TestLogicControllerImpl2

- (Cancellable)prepareSignalWithParameters:(id)parameters completion:(void (^)(id data, NSError *))compeltion{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_global_queue(0, 0), ^{
        NSDictionary *testInfo = @{
                                   @"title": @"Test Title 22222",
                                   @"desc": @"Test Description 222222"
                                   };
        
        if (compeltion) {
            compeltion(testInfo, nil);
        }
    });
    
    return ^{};
}

@end
