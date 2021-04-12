//
//  YFViewController.m
//  UPPaymentSDK
//
//  Created by yaofen on 04/12/2021.
//  Copyright (c) 2021 yaofen. All rights reserved.
//

#import "YFViewController.h"
#import <UPPaymentSDK/UPPaymentControl.h>

@interface YFViewController ()

@end

@implementation YFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    UIView *v= [[UIView alloc] init];
    v.frame = CGRectMake(100, 100, 100, 100);
    
    v.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:v];
    
    UITapGestureRecognizer *t = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dopay)];
    
    [v addGestureRecognizer:t];
    
    

}

- (void)dopay {
    [[UPPaymentControl defaultControl] startPay:@"wqw" fromScheme:@"sas" mode:@"1" viewController:self];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
