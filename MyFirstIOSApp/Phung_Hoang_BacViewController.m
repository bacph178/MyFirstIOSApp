//
//  Phung_Hoang_BacViewController.m
//  MyFirstIOSApp
//
//  Created by BacPH on 2014/09/05.
//  Copyright (c) 2014年 Phung.Hoang.Bac. All rights reserved.
//

#import "Phung_Hoang_BacViewController.h"

@interface Phung_Hoang_BacViewController () <UIAlertViewDelegate>

@end

@implementation Phung_Hoang_BacViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:@"Login"
                              message:@"Please enter your credentials"
                              delegate:self cancelButtonTitle:@"Cancel"
                              otherButtonTitles:@"Ok", nil];
    [alertView setAlertViewStyle:UIAlertViewStyleLoginAndPasswordInput];
    [alertView show];
}
@end
