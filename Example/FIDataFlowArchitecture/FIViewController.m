//
//  FIViewController.m
//  FIDataFlowArchitecture
//
//  Created by NGUYEN CHI CONG on 08/18/2015.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "FIViewController.h"

#import "TestDataForMultipleLogicControllersImpl.h"
#import "TestMultipleLogicControllersImpl.h"

#import <SVProgressHUD/SVProgressHUD.h>

@interface FIViewController ()

@property (weak, nonatomic) IBOutlet UIButton *btLoad;

@end

@implementation FIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"Hello world!");
    
    self.mainController = [FIBaseIntegrateController newControllerWithDataClass:[TestDataForMultipleLogicControllersImpl class] logicClass:[TestMultipleLogicControllersImpl class] start:^{
        [SVProgressHUD showWithStatus:@"Loading..."];
    } next:^(id value) {
        NSLog(@" --> Process Data: %@", value);
        
    } error:^(NSError *error) {
        NSLog(@" --> ERROR: %@", error);
    } completion:^{
        
        NSLog(@" --> Completed");
        
    } end:^{
        [SVProgressHUD popActivity];
    }];
    
    [self.mainController setRunningType:FIFlowRunningTypeLastest];
    
    [self start];
    [self start];
    
    [self performSelector:@selector(start) withObject:nil afterDelay:2];
    
    [self performSelector:@selector(start) withObject:nil afterDelay:3];
    
    [self performSelector:@selector(start) withObject:nil afterDelay:5];
    [self performSelector:@selector(start) withObject:nil afterDelay:5.01];
}

- (void)start{
    [self.mainController startFlowWithParameters:@[@"CONG",@""]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
