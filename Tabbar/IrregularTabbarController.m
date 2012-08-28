//
//  IrregularTabbarController.m
//  Tabbar
//
//  Created by Chen Yang on 12-8-28.
//  Copyright (c) 2012年 taobao. All rights reserved.
//

#import "IrregularTabbarController.h"

@interface IrregularTabbarController ()

@end

@implementation IrregularTabbarController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    UIImage *image = [UIImage imageNamed:@"2.png"];
    [image drawInRect:rect];
}

- (void)loadView {
    [super loadView];
}

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item {
    NSLog(@"item %@ %d",item,[self.tabBar.items indexOfObject:item]);
    NSInteger index = [self.tabBar.items indexOfObject:item];
    
    switch (index) {
        case 0:
            tabImageView.image = [UIImage imageNamed:@"1.png"];
            break;
        case 1:
            tabImageView.image = [UIImage imageNamed:@"2.png"];
            break;
        case 3:
            tabImageView.image = [UIImage imageNamed:@"4.png"];
            break;
        case 4:
            tabImageView.image = [UIImage imageNamed:@"5.png"];
            break;
        default:
            break;
    }
}


- (void)setViewControllers:(NSArray *)viewControllers {
    [super setViewControllers:viewControllers];
    NSLog(@"%s",__func__);
    
    for (UIView *obj in self.tabBar.subviews) {
        NSLog(@"obj %@",obj);
        obj.backgroundColor = [UIColor clearColor];
    }
    
    
    tabImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"1.png"]];
    tabImageView.frame = CGRectMake(0, 0, 320, 49);///426
    tabImageView.backgroundColor = [UIColor clearColor];
    tabImageView.userInteractionEnabled = NO;
    NSLog(@"tabbar frame %@",NSStringFromCGRect(self.tabBar.frame));
    [self.tabBar addSubview:tabImageView];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)setTabBarItem:(UITabBarItem *)tabBarItem {
    tabBarItem.image = nil;
    tabBarItem.title = @"";
    [super setTabBarItem:tabBarItem];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
