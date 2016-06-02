//
//  MagicModel.m
//  FIDataFlowArchitecture
//
//  Created by FOLY on 3/10/16.
//  Copyright © 2016 NGUYEN CHI CONG. All rights reserved.
//

#import "MagicModel.h"

@implementation MagicModel

+ (NSArray *)reduceKeys {
    return @[
             NSStringFromSelector(@selector(obj1)),
             NSStringFromSelector(@selector(obj2))
             ];
}

@end
