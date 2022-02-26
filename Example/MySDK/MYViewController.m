//
//  MYViewController.m
//  MySDK
//
//  Created by lxm1799 on 02/26/2022.
//  Copyright (c) 2022 lxm1799. All rights reserved.
//

#import "MYViewController.h"
#import "IMManager.h"
#import "MyObject.h"

@interface MYViewController ()

@end

@implementation MYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    IMManager *manager = [IMManager new];
    NSInteger aaa = [manager getLoginStatus];
    [manager print];
    
    NSLog(@"aaa == %ld",aaa);
    
    
    MyObject *obj = [MyObject new];
    [obj print];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
