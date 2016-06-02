//
//  FIBaseController.h
//  Demo
//
//  Created by NGUYEN CHI CONG on 8/4/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "FIBaseControllerProtocol.h"

@interface FIBaseController : NSObject <FIBaseControllerProtocol>
/**
 *
 *  Override these methods is not recommended
 *  
 *
 **/
- ( RACSignal* _Nullable)singalWithParameters:(nullable id)parameters;

@end
