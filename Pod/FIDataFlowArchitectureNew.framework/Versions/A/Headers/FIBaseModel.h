//
//  FIBaseModel.h
//  Demo
//
//  Created by NGUYEN CHI CONG on 8/4/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@interface FIBaseModel : JSONModel
/**
 *
 *  Use this property for custom validator & correct model with standard values
 *
 **/
- (void)setStandardizedModelHandler: (NSError *(^)(FIBaseModel *model))standardizedModelHandler;

/**
 *
 *  Method return an error when model not match with valid data
 *  Override this method is not recommended, use setStandardizedModelHandler: for custom validator
 *
 **/
- (NSError *)validateModel;

+ (instancetype) modelWithDictionary: (NSDictionary *)dict error: (NSError **)error;

@end
