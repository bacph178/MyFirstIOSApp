//
//  Phung_Hoang_BacViewController.m
//  MyFirstIOSApp
//
//  Created by BacPH on 2014/09/05.
//  Copyright (c) 2014年 Phung.Hoang.Bac. All rights reserved.
//

#import "Phung_Hoang_BacViewController.h"

@interface Phung_Hoang_BacViewController ()
@property (nonatomic, strong) UISlider *slider;
@end

@implementation Phung_Hoang_BacViewController

/* Ham xu ly viec thay doi gia tri cua slider, paramSender.value tra ve gia tri
 hien tai cua slider */
- (void) sliderValueChanged:(UISlider *)paramSender {
    if ([paramSender isEqual:self.slider]) {
        NSLog(@"New value = %f", paramSender.value);
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.slider = [[UISlider alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 200.0f, 10.0f)];
    self.slider.center = self.view.center;
    self.slider.minimumValue = 0.0f;
    self.slider.maximumValue = 100.0f;
    self.slider.value = self.slider.maximumValue / 2.0f;
    [self.view addSubview:self.slider];
    [self.slider addTarget:self action:@selector(sliderValueChanged:)
          forControlEvents:UIControlEventValueChanged];
    /* mau cua vung gia trij thap */
    self.slider.minimumTrackTintColor = [UIColor redColor];
    
    /* mau cua vung gia tri cao */
    self.slider.maximumTrackTintColor = [UIColor greenColor];
    
    /* mau num di chuyen khi dat tay vao */
    self.slider.thumbTintColor = [UIColor blackColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
