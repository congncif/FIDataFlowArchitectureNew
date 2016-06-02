//
//  MagicModel.h
//  FIDataFlowArchitecture
//
//  Created by FOLY on 3/10/16.
//  Copyright © 2016 NGUYEN CHI CONG. All rights reserved.
//
#import <FIDataFlowArchitectureNew/FIDataFlowArchitectureNew.h>
#import "TestModel.h"

@interface MagicModel : FIIntegrateModel

@property (nonatomic, strong) TestModel *obj1;
@property (nonatomic, strong) TestModel *obj2;

@end
