//
//  LSIQuakeFetcher.m
//  iOS6-Quakes-Objc
//
//  Created by Paul Solt on 7/16/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSIQuakeFetcher.h"

@implementation LSIQuakeFetcher


- (void)fetchQuakesFromDateInterval:(NSDateInterval *)dateInterval
                  completitionBlock:(LSIQuakeFetcherCompletionBlock)completionBlock {
    
}


- (void)fetchQuakesWithCompletionBlock:(LSIQuakeFetcherCompletionBlock)completionBlock {
    NSDate *endDate = [NSDate date]; // Date()
    NSDate *startDate = [NSCalendar.currentCalendar dateByAddingUnit:NSCalendarUnitDay value:-1 toDate:endDate options:0];
    
    NSDateInterval *dateInterval = [[NSDateInterval alloc] initWithStartDate:startDate endDate:endDate];
    
    [self fetchQuakesFromDateInterval:dateInterval completitionBlock:completionBlock];
}


@end
