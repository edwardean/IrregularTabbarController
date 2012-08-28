//
//  IrregularTabbarControllerAppDelegate.h
//  Tabbar
//
//  Created by Chen Yang on 12-8-27.
//  Copyright (c) 2012年 taobao. All rights reserved.
//

#import <UIKit/UIKit.h>

@class IrregularTabbarController;

@interface IrregularTabbarControllerAppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) IrregularTabbarController *tabBarController;

@end
