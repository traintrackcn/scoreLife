//
//  SLCanDoEditViewController.h
//  scoreLife
//
//  Created by traintrackcn on 13-1-31.
//  Copyright (c) 2013年 lt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SLCanDoEditViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet UIButton *saveButton;
@property (nonatomic, weak) IBOutlet UIButton *deleteButton;


@property (nonatomic, weak) IBOutlet UITextField *titleTextField;
@property (nonatomic, weak) IBOutlet UISegmentedControl *scoreSegmentControl;

@end
