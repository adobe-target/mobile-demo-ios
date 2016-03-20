//
//  RegistrationViewController.m
//  DailyDeals
//
//  Created by MyAppTemplates Software on 08/04/14.
//  Copyright (c) 2014 MyAppTemplates Software. All rights reserved.
//

#import "RegistrationViewController.h"
#import "ADBMobile.h"


@interface RegistrationViewController ()

@end

@implementation RegistrationViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self makeMboxConfirm];
}
-(IBAction)btnBackClk:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)prefersStatusBarHidden {
    return YES;
}

-(void) makeMboxConfirm
{
//    ADBTargetLocationRequest* registersuccess = [ADBMobile targetCreateOrderConfirmRequestWithName:@"M5-user-registered"
//                                                                                            orderId:nil
//                                                                                            orderTotal:nil
//                                                                                            productPurchasedId:nil
//                                                                                            parameters:nil];
//    [ADBMobile targetLoadRequest:registersuccess callback:^(NSString *content){
//        NSLog(@"⚡️ Fired a success metric ⚡️");
//    }];
    
}

@end
