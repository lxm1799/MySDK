//
//  IMManager.m
//  MySDK
//
//  Created by luckyBoy on 2022/2/26.
//

#import "IMManager.h"
#import "ImSDK_Plus.h"

@implementation IMManager


//1,  ///< 已登录
//2,  ///< 登录中
//3,  ///< 无登录
-(NSInteger)getLoginStatus{
    return [V2TIMManager sharedInstance].getLoginStatus;
}


-(void)print{
    NSLog(@"print = 11111");
}



@end
