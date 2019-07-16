//
//  LSIQuake.m
//  iOS6-Quakes-Objc
//
//  Created by Paul Solt on 7/16/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSIQuake.h"

@implementation LSIQuake

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
    // if (self != nil) {
        
        // In initializers use the _, not the self.
        
        _identifier = dictionary[@"id"];
        
        // NOTE: We can't store primative data types in NSDictionary/NSArray
//        NSDictionary *properties = dictionary[@"properties"];
//        _magnitude = [properties[@"mag"] doubleValue];
        
        _magnitude = [dictionary[@"properties"][@"mag"] doubleValue];
        _place = dictionary[@"properties"][@"place"];
        
        long timeInMilliseconds = [dictionary[@"properties"][@"time"] longValue];
        NSTimeInterval timeInSeconds = (NSTimeInterval)timeInMilliseconds / 1000.0;
        _time = [NSDate dateWithTimeIntervalSince1970:timeInSeconds];
        
        NSArray *coordinates = dictionary[@"geometry"][@"coordinates"];
        // Array of NSNumber objects because NSArray can't store double or int
        CLLocationDegrees longitude = [coordinates[0] doubleValue];
        CLLocationDegrees latitude = [coordinates[1] doubleValue];
        _location = CLLocationCoordinate2DMake(latitude, longitude);
        
    }
    return self;
}




@end
