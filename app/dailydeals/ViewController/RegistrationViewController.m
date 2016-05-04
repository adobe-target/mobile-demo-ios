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

//    Use the targetCreateOrderConfirmRequestWithName call to track a conversion or record a purchase.
//    If the conversion event isn't a revenue transaction, pass 'nil' for the three reservered parameters.

//    In the example below,
//    "12345" - Replace with dynamic variable representing a unique order ID
//    "39.95" - Replace with a dynamic variable representing a unique order total
//    "abcdef"- Replace with a dynamic variable representing a comma delimited list of products purchased
//    nil - Optional dictionary of additional parameters
    
    ADBTargetLocationRequest* registersuccess = [ADBMobile targetCreateOrderConfirmRequestWithName:@"K5-user-registered"
                                                                                            orderId:@"12345"
                                                                                            orderTotal:@"39.95"
                                                                                            productPurchasedId:@"abcdef"
                                                                                            parameters:nil];
    [ADBMobile targetLoadRequest:registersuccess callback:^(NSString *content){
        NSLog(@"⚡️ Fired a success metric ⚡️");
    }];
    
}

@end
