//
//  SLDashboardViewController.m
//  scoreLife
//
//  Created by traintrackcn on 13-1-31.
//  Copyright (c) 2013年 lt. All rights reserved.
//

#import "SLDashboardViewController.h"
#import "SLRootViewController.h"

@interface SLDashboardViewController ()

@end

@implementation SLDashboardViewController

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
    [self setTitle:NSLocalizedString(@"Life", nil)];
    
    [_canDoButton addTarget:[SLRootViewController sharedInstance] action:@selector(showCanDoList) forControlEvents:UIControlEventTouchUpInside];
    [_toDoButton addTarget:[SLRootViewController sharedInstance] action:@selector(showToDoList) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIBarButtonItem *barBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCompose target:self action:@selector(addCanDoThing)];
    [[self navigationItem] setRightBarButtonItem:barBtn];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addCanDoThing{
    [[SLRootViewController sharedInstance] showCanDoEdit];
}

@end
