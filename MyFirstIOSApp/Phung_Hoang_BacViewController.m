//
//  Phung_Hoang_BacViewController.m
//  MyFirstIOSApp
//
//  Created by BacPH on 2014/09/05.
//  Copyright (c) 2014年 Phung.Hoang.Bac. All rights reserved.
//

#import "Phung_Hoang_BacViewController.h"

@interface Phung_Hoang_BacViewController ()
@property (nonatomic, strong) UIDatePicker *myDatePicker;
@end

@implementation Phung_Hoang_BacViewController

- (void) datePickerDateChanged:(UIDatePicker *)paramDatePicker {
    if ([paramDatePicker isEqual:self.myDatePicker]) {
        NSLog(@"Selected date = %@", paramDatePicker.date);
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.myDatePicker = [[UIDatePicker alloc] init];
    self.myDatePicker.center = self.view.center;
    
    /* thay doi style cua datePicker */
    self.myDatePicker.datePickerMode = UIDatePickerModeCountDownTimer;
    [self.view addSubview:self.myDatePicker];
    
    /* nhan biet su thay doi thanh phan duoc lua chon trong date picker*/
    [self.myDatePicker addTarget:self action:@selector(datePickerDateChanged:)
                forControlEvents:UIControlEventValueChanged];
    
    /*Doi voi datePicker dem nguoc thi can them thoi gian dem nguoc*/
    NSTimeInterval twoMinustes = 2 * 60;
    [self.myDatePicker setCountDownDuration:twoMinustes];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
