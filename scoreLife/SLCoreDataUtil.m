//
//  SLCoreDataUtil.m
//  scoreLife
//
//  Created by traintrackcn on 13-1-31.
//  Copyright (c) 2013年 lt. All rights reserved.
//

#import "SLCoreDataUtil.h"

#import "SLThingCanDo.h"
#import "SLProfile.h"
#import "SLThingToDo.h"


static SLCoreDataUtil *____instanceSLCoreDataUtil;

@implementation SLCoreDataUtil


+ (SLCoreDataUtil *)sharedInstance{
    if (____instanceSLCoreDataUtil == nil) {
        ____instanceSLCoreDataUtil = [[SLCoreDataUtil alloc] init];
    }
    return ____instanceSLCoreDataUtil;
}


#pragma mark - operations

- (void)insertThingCanDoWithTitle:(NSString *)title score:(int)score{
//    NSManagedObjectContext *moc = [self privateQueueConcurrencyManagedObjectContext];
    NSManagedObjectContext *moc = _moc;
    SLThingCanDo *item = [NSEntityDescription insertNewObjectForEntityForName:@"SLThingCanDo" inManagedObjectContext:moc];
    [item setKey:[self randomKey]];
    [item setTitle:title];
    [item setScore:[NSNumber numberWithInt:score]];
    [moc performBlock:^{
        // Your MOC stuff running on its own private queue
        [moc save:nil];
        LOG_DEBUG(@"save thing can do");
    }];
}

- (void)deleteThingCanDo:(NSManagedObject *)item{
    NSManagedObjectContext *moc = _moc;
    // Save the context.
    [moc performBlockAndWait:^{
        NSError *error;
        if (![moc save:&error]) {
            LOG_ERROR(@"Unresolved error %@, %@", error, [error userInfo]);
//            abort();
        }
    }];
    
    
}

- (NSFetchedResultsController *)fetchThingsCanDo{
    NSManagedObjectContext *moc = _moc;
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    // Edit the entity name as appropriate.
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"SLThingCanDo" inManagedObjectContext:moc];
    [fetchRequest setEntity:entity];
    
    // Edit the sort key as appropriate.
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"title" ascending:YES];
    NSArray *sortDescriptors = [[NSArray alloc] initWithObjects:sortDescriptor, nil];
    
    [fetchRequest setSortDescriptors:sortDescriptors];
    // Edit the section name key path and cache name if appropriate.
    // nil for section name key path means "no sections".
    NSFetchedResultsController *aFetchedResultsController = [[NSFetchedResultsController alloc] initWithFetchRequest:fetchRequest managedObjectContext:moc sectionNameKeyPath:nil cacheName:@"Root"];
    [moc performBlockAndWait:^{
        NSError *error;
        [aFetchedResultsController performFetch:&error];
		// Update to handle the error appropriately.
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
    }];
    
    return aFetchedResultsController;
}

#pragma mark - generate kinds moc

- (NSManagedObjectContext *)privateQueueConcurrencyManagedObjectContext{
    NSManagedObjectContext *moc = [[NSManagedObjectContext alloc] initWithConcurrencyType:NSPrivateQueueConcurrencyType];
    moc.parentContext = _moc;
    moc.persistentStoreCoordinator = _psc;
    return moc;
}

- (NSManagedObjectContext *)mainQueueConcurrencyManagedObjectContext{
    NSManagedObjectContext *moc = [[NSManagedObjectContext alloc] initWithConcurrencyType:NSMainQueueConcurrencyType];
    moc.parentContext = _moc;
    moc.persistentStoreCoordinator = _psc;
    return moc;
}

#pragma mark - util

- (NSString *)randomKey{
    return [self genRandStringLength:10];
}

-(NSString *)genRandStringLength: (int) len {
    NSString *letters = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    NSMutableString *randomString = [NSMutableString stringWithCapacity: len];
    
    for (int i=0; i<len; i++) {
        [randomString appendFormat: @"%C", [letters characterAtIndex: arc4random() % [letters length]]];
    }
    
    return randomString;
}

@end
