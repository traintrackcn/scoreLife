//
//  SLCanDoListViewController.m
//  scoreLife
//
//  Created by traintrackcn on 13-1-31.
//  Copyright (c) 2013年 lt. All rights reserved.
//

#import "SLCanDoListViewController.h"

@interface SLCanDoListViewController ()

@end

@implementation SLCanDoListViewController

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
    [self setTitle:NSLocalizedString(@"Can Do", nil)];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
