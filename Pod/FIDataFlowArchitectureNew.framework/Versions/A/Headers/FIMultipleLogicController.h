//
//  FIMultipleLogicController.h
//  Pods
//
//  Created by FOLY on 11/25/15.
//
//

#import "FILogicController.h"

/**
 *  Must be override at least a method: interalLogicControllers or interalLogicControllerClassNames
 *  Object is returned : array of logic members's results by default
 */
@interface FIMultipleLogicController : FILogicController

/**
    return internal logic controllers
 */
- (NSArray  * _Nonnull)interalLogicControllers;

/**
    return class name of internal logic controllers
 */
- (NSArray * _Nonnull)interalLogicControllerClassNames;




@end
