//
//  Phung_Hoang_BacViewController.m
//  MyFirstIOSApp
//
//  Created by BacPH on 2014/09/05.
//  Copyright (c) 2014年 Phung.Hoang.Bac. All rights reserved.
//

#import "Phung_Hoang_BacViewController.h"

@interface Phung_Hoang_BacViewController ()
@property (nonatomic, strong) UISwitch *mainSwitch;
@end

@implementation Phung_Hoang_BacViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.mainSwitch = [[UISwitch alloc] initWithFrame:CGRectZero];
    self.mainSwitch.center = self.view.center;
    [self.view addSubview:self.mainSwitch];
    
    /* Customize the switch */
    
    /*
     adjust the off-mode tint color
     doi mau trang thai off cua switch
    */
    self.mainSwitch.tintColor = [UIColor redColor];
    
    /*
     Adjust the on-mode tint color
     doi mau trang thai on cua switch
     */
    self.mainSwitch.onTintColor = [UIColor blackColor];
    
    /*
     Also change the knob's tint color
     doi mau num di chuyen cua switch
     */
    self.mainSwitch.thumbTintColor = [UIColor greenColor];
    
    self.mainSwitch.onImage = [UIImage imageNamed:@"On"];
    self.mainSwitch.offImage = [UIImage imageNamed:@"Off"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
