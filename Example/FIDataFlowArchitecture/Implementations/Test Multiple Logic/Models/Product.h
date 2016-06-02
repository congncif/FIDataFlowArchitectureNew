//
//  Product.h
//  Demo
//
//  Created by NGUYEN CHI CONG on 8/5/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <FIDataFlowArchitectureNew/FIDataFlowArchitectureNew.h>

#import "TestModel.h"

@interface Product : FIBaseModel

@property (nonatomic, strong) TestModel *result1;
@property (nonatomic, strong) TestModel *result2;

@end
