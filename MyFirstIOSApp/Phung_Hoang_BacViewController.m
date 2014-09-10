//
//  Phung_Hoang_BacViewController.m
//  MyFirstIOSApp
//
//  Created by BacPH on 2014/09/05.
//  Copyright (c) 2014年 Phung.Hoang.Bac. All rights reserved.
//

#import "Phung_Hoang_BacViewController.h"

@interface Phung_Hoang_BacViewController () <UIPickerViewDataSource,
UIPickerViewDelegate>
@property (nonatomic, strong) UIPickerView *myPicker;
@end

@implementation Phung_Hoang_BacViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.myPicker = [[UIPickerView alloc] init];
    
    /* them data vao picker */
    self.myPicker.dataSource = self;
    self.myPicker.center = self.view.center;
    
    /* phat hien cham vao picker*/
    self.myPicker.delegate = self;
    [self.view addSubview:self.myPicker];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/* tra lai so cot cua Picker*/
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    if ([pickerView isEqual:self.myPicker]) {
        return 2;
    }
    return 0;
}

/* tra lai so thanh phan chon cua 1 cot chon cua Picker */
- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component {
    if ([pickerView isEqual:self.myPicker]) {
        return 5;
    }
    return 0;
}

/* Data hien thi tren cac hang cua moi cot */
- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if ([pickerView isEqual:self.myPicker]) {
        return [NSString stringWithFormat:@"Row %ld", (long)row +1];
    }
    return nil;
}

/* neu muon thay doi gai tri cua picker trong qua trinh chay can phai reload lai
 du lieu bang cach reload lai toan bo cac thanh phan bang ham reloadAllComponets
 hoac reload lai 1 thanh phan bang ham reloadComponent voi bien truyen vao la chi
 so cua component can reload
 */
@end
