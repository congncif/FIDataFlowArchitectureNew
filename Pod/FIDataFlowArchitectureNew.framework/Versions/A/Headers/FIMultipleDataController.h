//
//  FIMultipleDataController.h
//  Pods
//
//  Created by FOLY on 3/10/16.
//
//

#import "FIDataController.h"
#import "FIIntegrateModel.h"

@interface FIMultipleDataController : FIDataController

/**
 *  Model of object is returned by FIMultipleLogicController
 *
 *  @return nil if return default
 */
- (nullable Class)reduceModel;

@end
