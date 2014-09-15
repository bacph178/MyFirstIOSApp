//
//  Phung_Hoang_BacViewController.m
//  MyFirstIOSApp
//
//  Created by BacPH on 2014/09/05.
//  Copyright (c) 2014年 Phung.Hoang.Bac. All rights reserved.
//

#import "Phung_Hoang_BacViewController.h"

@interface Phung_Hoang_BacViewController ()
@property (nonatomic, strong) UISegmentedControl *mySegmentedControl;
@end

@implementation Phung_Hoang_BacViewController

/* Ham xu ly viec thay doi gia tri cua slider, paramSender.value tra ve gia tri
 hien tai cua slider */
- (void)viewDidLoad
{
    [super viewDidLoad];
    NSArray *segments = [[NSArray alloc] initWithObjects:@"iPhone",
                                                            @"Ipad",
                                                            @"iPod",
                                                            @"iMac", nil];
    self.mySegmentedControl = [[UISegmentedControl alloc] initWithItems:segments];
    
    //dieu chinh kich thuoc cua cac segment
    CGRect segmentedFrame = self.mySegmentedControl.frame;
    segmentedFrame.size.height = 128.0f;
    segmentedFrame.size.width = 300.0f;
    self.mySegmentedControl.frame = segmentedFrame;
    self.mySegmentedControl.center = self.view.center;
    [self.view addSubview:self.mySegmentedControl];
    [self.mySegmentedControl addTarget:self
                                action:@selector(segmentChanged:)
                      forControlEvents:UIControlEventValueChanged];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//ham su ly khi 1 segment duoc chon
- (void) segmentChanged:(UISegmentedControl *)paramSender {
    if ([paramSender isEqual:self.mySegmentedControl]) {
        NSInteger selectedSegmentIndex = [paramSender selectedSegmentIndex];
        NSString *selectedSegmentText = [paramSender
                                         titleForSegmentAtIndex:selectedSegmentIndex];
        NSLog(@"Segment %ld with %@ text is selected", (long)selectedSegmentIndex,
              selectedSegmentText);
    }
}

@end
