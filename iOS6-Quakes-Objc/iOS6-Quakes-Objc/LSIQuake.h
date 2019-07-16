//
//  LSIQuake.h
//  iOS6-Quakes-Objc
//
//  Created by Paul Solt on 7/16/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIQuake : NSObject

@property NSString *identifier; // can't use id because it's a keyword
@property double magnitude;
@property NSString *place;
@property NSDate *time;
@property CLLocationCoordinate2D location;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

//- (instancetype)initWithIdentifier:(NSString *)identifier
//                             place:(NSString *)place 


@end

NS_ASSUME_NONNULL_END
