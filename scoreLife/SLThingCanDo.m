//
//  SLThingCanDo.m
//  scoreLife
//
//  Created by traintrackcn on 13-1-31.
//  Copyright (c) 2013年 lt. All rights reserved.
//

#import "SLThingCanDo.h"


@implementation SLThingCanDo

@dynamic title;
@dynamic score;
@dynamic key;





- (NSString *)scoreText{
    return [NSString stringWithFormat:@"+%@",[[self score] stringValue]];
}

@end
