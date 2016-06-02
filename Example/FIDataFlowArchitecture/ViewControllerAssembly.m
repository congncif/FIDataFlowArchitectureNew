//
//  ViewControllerAssembly.m
//  Demo
//
//  Created by NGUYEN CHI CONG on 8/5/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "ViewControllerAssembly.h"

#import "FIViewController.h"

#import <FIDataFlowArchitectureNew/FIDataFlowArchitectureNew.h>

#import "TestDataControllerImpl.h"
#import "TestLogicControllerImpl.h"
#import "TestLogicControllerImpl2.h"
#import "TestMultipleLogicControllersImpl.h"
#import "TestDataForMultipleLogicControllersImpl.h"

@implementation ViewControllerAssembly

- (FIViewController *)viewController{
    return [TyphoonDefinition withClass:[FIViewController class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(mainController) with:[self mainController]];
    }];
}

- (id<FIBasePresentControllerProtocol>)mainController{
    return [TyphoonDefinition withClass:[FIBaseIntegrateController class] configuration:^(TyphoonDefinition *definition) {
        
        NSDictionary *info = [[NSBundle mainBundle] infoDictionary];
        NSLog(@"Print input: %@", info);
        
        [definition injectProperty:@selector(logicController) with:self.testMultipleLogicController];
        [definition injectProperty:@selector(dataController) with:self.testDataForMultipleLogicController];
        
        definition.scope = TyphoonScopeSingleton;
    }];
}

#pragma mark - Simple test
/**-----------------------------------------------------------------**/

- (id<FIBasePresentControllerProtocol>)testLogicController{
    return [TyphoonDefinition withClass:[TestLogicControllerImpl class] configuration:^(TyphoonDefinition *definition) {
        definition.scope = TyphoonScopeSingleton;
    }];
}
- (id<FIBasePresentControllerProtocol>)testDataController{
    return [TyphoonDefinition withClass:[TestDataControllerImpl class] configuration:^(TyphoonDefinition *definition) {
        definition.scope = TyphoonScopeSingleton;
    }];
}

#pragma mark - Multiple test
/**-----------------------------------------------------------------**/

- (id<FIBasePresentControllerProtocol>)testMultipleLogicController{
    return [TyphoonDefinition withClass:[TestMultipleLogicControllersImpl class] configuration:^(TyphoonDefinition *definition) {
        definition.scope = TyphoonScopeSingleton;
    }];
}

- (id<FIBasePresentControllerProtocol>)testDataForMultipleLogicController{
    return [TyphoonDefinition withClass:[TestDataForMultipleLogicControllersImpl class] configuration:^(TyphoonDefinition *definition) {
        definition.scope = TyphoonScopeSingleton;
    }];
}


@end
