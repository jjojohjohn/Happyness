//
//  ODDHappyness.h
//  Happyness
//
//  Created by Matthew Chiang on 7/18/14.
//  Copyright (c) 2014 OddLook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class ODDHappynessEntry;

@interface ODDHappyness : NSManagedObject

@property (nonatomic, retain) NSNumber * rating;
@property (nonatomic, retain) NSNumber * value;
@property (nonatomic, retain) ODDHappynessEntry *entry;

@end
