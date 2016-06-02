//
//  TestModel.h
//  Demo
//
//  Created by NGUYEN CHI CONG on 8/4/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <FIDataFlowArchitectureNew/FIDataFlowArchitectureNew.h>

@import JSONModel;

@interface TestModel : FIBaseModel

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *desc;


@end
