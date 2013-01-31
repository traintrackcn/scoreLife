//
//  SLCoreDataUtil.h
//  scoreLife
//
//  Created by traintrackcn on 13-1-31.
//  Copyright (c) 2013年 lt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SLCoreDataUtil : NSObject


@property (nonatomic, strong) NSManagedObjectContext *moc;
@property (nonatomic, strong) NSPersistentStoreCoordinator *psc;

- (void)insertThingCanDoWithTitle:(NSString *)title score:(int)score;
- (void)deleteThingCanDo:(NSManagedObject *)item;
- (NSFetchedResultsController *)fetchThingsCanDo;


+ (SLCoreDataUtil *)sharedInstance;


@end
