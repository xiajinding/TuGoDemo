//
//  ViewControllerFirst.m
//  兔狗面试题
//
//  Created by Lemon on 15/12/27.
//  Copyright © 2015年 LemonXia. All rights reserved.
//

#import "ViewControllerFirst.h"
#import "ViewControllerSecond.h"

@interface ViewControllerFirst ()

@end

@implementation ViewControllerFirst

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)butttonClick:(id)sender {
    ViewControllerSecond *VC = [[ViewControllerSecond alloc]init];
    [self presentViewController:VC animated:YES completion:nil];
}


@end
