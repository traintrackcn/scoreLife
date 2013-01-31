//
//  SLCanDoEditViewController.m
//  scoreLife
//
//  Created by traintrackcn on 13-1-31.
//  Copyright (c) 2013年 lt. All rights reserved.
//

#import "SLCanDoEditViewController.h"
#import "SLRootViewController.h"
#import "SLCoreDataUtil.h"

@interface SLCanDoEditViewController ()

@end

@implementation SLCanDoEditViewController

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
    [self setTitle:@"edit thing can do"];
    [_saveButton addTarget:self action:@selector(save:) forControlEvents:UIControlEventTouchUpInside];
    [_deleteButton addTarget:self action:@selector(delete:) forControlEvents:UIControlEventTouchUpInside];
    
    
//    LOG_DEBUG(@"_titleTextField -> %@", _titleTextField);
    
    [_titleTextField setDelegate:self];
//    [_scoreSegmentControl ]
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dismissPush{
     [[self navigationController] popViewControllerAnimated:YES];
    
//    [UIApplicationDele]
}

#pragma mark - button actions

- (void)save:(id)sender{
    
    NSString *title = [_titleTextField text];
    int score = [_scoreSegmentControl selectedSegmentIndex];
    
    if ([title isEqualToString:@""] || score == 0) {
        [[SLRootViewController sharedInstance] alertWithTitle:@"choose both title and score" message:nil];
        return;
    }
    
    [[SLCoreDataUtil sharedInstance] insertThingCanDoWithTitle:title score:score];
    
    LOG_DEBUG(@"save a thing can do\ntitle:%@\nscore:%d",title,score);
    [self dismissPush];
}

- (void)delete:(id)sender{
    LOG_DEBUG(@"delete a thing can do");
    [self dismissPush];
}

#pragma mark - UITextfieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
//    LOG_DEBUG(@"textFieldShouldReturn");
    [textField resignFirstResponder];
    return  YES;
}





@end
