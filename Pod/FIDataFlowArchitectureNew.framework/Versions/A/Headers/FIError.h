//
//  FIError.h
//  Demo
//
//  Created by NGUYEN CHI CONG on 8/5/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FIErrorCommonMessage.h"

typedef NS_OPTIONS(NSInteger, FIERROR_CODE){
    FIERROR_CODE_FETCH_DATA = 11,
    FIERROR_CODE_PARSE_DATA = 12,
    FIERROR_CODE_CHECK_DATA = 13
};

extern NSString *const FIERROR_DORMAIN_FETCH_DATA ;
extern NSString *const FIERROR_DORMAIN_PARSE_DATA ;
extern NSString *const FIERROR_DORMAIN_CHECK_DATA ;

@interface FIError : NSError

+ (FIError *)errorFetchDataWithMessage: (NSString *)localizedMessage display: (BOOL)displayed;
+ (FIError *)errorParseDataWithMessage: (NSString *)localizedMessage display: (BOOL)displayed;
+ (FIError *)errorCheckDataWithMessage: (NSString *)localizedMessage display: (BOOL)displayed;

@end
