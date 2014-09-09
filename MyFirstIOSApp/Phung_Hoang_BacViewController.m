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
    self.view.backgroundColor = [UIColor whiteColor];
    NSString *message = @"Are you sure you want to open this link in Safari?";
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:@"Open Link"
                              message: message
                              delegate:self cancelButtonTitle:[self yesButtonTitle]
                              otherButtonTitles:[self noButtonTitle], nil];
    [alertView show];
}

- (NSString *) yesButtonTitle {
    return  @"Yes";
}

- (NSString *) noButtonTitle {
    return @"no";
}

- (void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    NSString *buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
    if ([buttonTitle isEqualToString:[self yesButtonTitle]]) {
        NSLog(@"User pressed the yes button");
    } else if ([buttonTitle isEqualToString:[self noButtonTitle]]) {
        NSLog(@"User pressed the no button");
    }
}

@end
