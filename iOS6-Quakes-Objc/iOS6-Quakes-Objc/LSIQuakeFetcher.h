//
//  LSIQuakeFetcher.h
//  iOS6-Quakes-Objc
//
//  Created by Paul Solt on 7/16/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^LSIQuakeFetcherCompletionBlock)(NSArray *, NSError *);

//func fetchQuakes(from dateInterval: DateInterval,
//                 completion: @escaping ([Quake]?, Error?) -> Void) {


@interface LSIQuakeFetcher : NSObject

- (void)fetchQuakesFromDateInterval:(NSDateInterval *)dateInterval
                  completitionBlock:(LSIQuakeFetcherCompletionBlock)completionBlock;
//                  completitionBlock:(void (^)(NSArray *, NSError *))completionBlock;


- (void)fetchQuakesWithCompletionBlock:(LSIQuakeFetcherCompletionBlock)completionBlock;

@end

NS_ASSUME_NONNULL_END
