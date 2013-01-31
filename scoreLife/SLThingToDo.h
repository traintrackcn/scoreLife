//
//  SLThingToDo.h
//  scoreLife
//
//  Created by traintrackcn on 13-1-31.
//  Copyright (c) 2013年 lt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface SLThingToDo : NSManagedObject

@property (nonatomic, retain) NSString * key;
@property (nonatomic, retain) NSDate * timeRemind;
@property (nonatomic, retain) NSNumber * status;
@property (nonatomic, retain) NSString * keyCanDo;

@end
