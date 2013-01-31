//
//  SLRootViewController.m
//  scoreLife
//
//  Created by traintrackcn on 13-1-31.
//  Copyright (c) 2013年 lt. All rights reserved.
//

#import "SLRootViewController.h"

#import "SLDashboardViewController.h"
#import "SLToDoListViewController.h"
#import "SLCanDoListViewController.h"


@interface SLRootViewController ()

@end

static SLRootViewController *____SLRootViewControllerInstance;

@implementation SLRootViewController


+ (SLRootViewController *)sharedInstance{
    if (____SLRootViewControllerInstance == nil) {
        ____SLRootViewControllerInstance = [[SLRootViewController alloc] init];
    }
    return ____SLRootViewControllerInstance;
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showLogin{
//    DSLoginViewController *loginVC = (DSLoginViewController *)[TNibUtil instantiateObjectFromNibWithName:@"DSLoginViewController"];
//    [self pushViewController:loginVC animated:YES];
}

- (void)showDashboard{
    [self pushVC:@"SLDashboardViewController"];
}

- (void)showToDoList{
    
    [self pushVC:@"SLToDoListViewController"];
}

- (void)showCanDoList{
    [self pushVC:@"SLCanDoListViewController"];
}

- (void)showCanDoEdit{
    [self pushVC:@"SLCanDoEditViewController"];
}

@end
