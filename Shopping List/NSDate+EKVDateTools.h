//
//  NSDate+EKVDateTools.h
//  Shopping List
//
//  Created by Eduard Kolenov on 10.12.15.
//  Copyright © 2015 Eduard Kolenov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (EKVDateTools)
- (instancetype) initDateWithString:(NSString *)birthDayString;
- (instancetype) initWithDateYear:(NSUInteger)year andMonth:(NSUInteger)month andDay:(NSUInteger)day;
@end
