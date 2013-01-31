//
//  ThingCanDo.h
//  scoreLife
//
//  Created by traintrackcn on 13-1-31.
//  Copyright (c) 2013年 lt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface ThingCanDo : NSManagedObject

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSNumber * score;
@property (nonatomic, retain) NSString * key;

@end
