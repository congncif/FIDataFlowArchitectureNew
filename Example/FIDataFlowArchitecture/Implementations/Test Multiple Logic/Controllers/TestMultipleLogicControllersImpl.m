//
//  TestMultipleLogicControllers.m
//  Demo
//
//  Created by NGUYEN CHI CONG on 8/5/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "TestMultipleLogicControllersImpl.h"

#import "TestLogicControllerImpl.h"
#import "TestLogicControllerImpl2.h"

@implementation TestMultipleLogicControllersImpl

//- (NSArray *)interalLogicControllers{
//    return @[
//             [[TestLogicControllerImpl alloc] init],
//             [[TestLogicControllerImpl2 alloc] init]
//             ];
//}

- (NSArray *)interalLogicControllerClassNames{
    
    return @[
             NSStringFromClass([TestLogicControllerImpl class]),
             NSStringFromClass([TestLogicControllerImpl2 class])
             ];
}




@end
