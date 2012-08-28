//
//  IrregularTabbarControllerFirstViewController.m
//  Tabbar
//
//  Created by Chen Yang on 12-8-27.
//  Copyright (c) 2012年 taobao. All rights reserved.
//

#import "IrregularTabbarControllerFirstViewController.h"
#import "IrregularTabbarControllerSecondViewController.h"

@interface IrregularTabbarControllerFirstViewController ()

@end

@implementation IrregularTabbarControllerFirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)secondVC:(id)sender {
    IrregularTabbarControllerSecondViewController *vc = [[IrregularTabbarControllerSecondViewController alloc] initWithNibName:@"IrregularTabbarControllerSecondViewController" bundle:nil];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
