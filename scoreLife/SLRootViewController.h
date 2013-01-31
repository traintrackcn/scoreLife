//
//  SLRootViewController.h
//  scoreLife
//
//  Created by traintrackcn on 13-1-31.
//  Copyright (c) 2013年 lt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TRootViewController.h"

@interface SLRootViewController : TRootViewController

+ (SLRootViewController *)sharedInstance;


- (void)showLogin;
- (void)showDashboard;
- (void)showToDoList;
- (void)showCanDoList;
- (void)showCanDoEdit;

@end
