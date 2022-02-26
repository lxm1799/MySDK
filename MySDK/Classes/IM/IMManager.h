//
//  IMManager.h
//  MySDK
//
//  Created by luckyBoy on 2022/2/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface IMManager : NSObject

//1,  ///< 已登录
//2,  ///< 登录中
//3,  ///< 无登录
-(NSInteger)getLoginStatus;

-(void)print;

@end

NS_ASSUME_NONNULL_END
