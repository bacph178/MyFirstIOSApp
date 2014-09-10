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
    
	// Do any additional setup after loading the view, typically from a nib.
    self.mainSwitch = [[UISwitch alloc] initWithFrame:CGRectMake(100, 100, 0, 0)];
    
    //add mainSwitch to view
    [self.view addSubview:self.mainSwitch];
    
    //khi switch chuyen trang thai thi ham switchIsChanged duoc goi
    [self.mainSwitch addTarget:self action:@selector(switchIsChanged:) forControlEvents:UIControlEventValueChanged];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Ham xu ly khi chuyen trang thai cua mainSwitch
- (void) switchIsChanged:(UISwitch *)paramSender {
    if ([paramSender isOn]) {
        NSLog(@"sang con me no rui");
    } else {
        NSLog(@"Lai tat rui ah");
    }
}
@end
