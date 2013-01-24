//
//  SLAppDelegate.h
//  scoreLife
//
//  Created by traintrackcn on 13-1-24.
//  Copyright (c) 2013年 lt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SLAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
