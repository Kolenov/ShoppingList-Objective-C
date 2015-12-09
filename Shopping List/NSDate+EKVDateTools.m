//
//  NSDate+EKVDateTools.m
//  Shopping List
//
//  Created by Eduard Kolenov on 10.12.15.
//  Copyright © 2015 Eduard Kolenov. All rights reserved.
//

#import "NSDate+EKVDateTools.h"

@implementation NSDate (EKVDateTools)

- (NSDate *) setDateYear:(NSUInteger)year andMonth:(NSUInteger)month andDay:(NSUInteger)day{
    NSDateComponents *components = [NSDateComponents new];
    components.year = year;
    components.month = month;
    components.day = day;
    components.timeZone = [NSTimeZone timeZoneForSecondsFromGMT:0];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    return [calendar dateFromComponents:components];
}

- (NSDate *) setDateFromString:(NSString *)dateString{
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    dateFormatter.locale = [NSLocale currentLocale];
    dateFormatter.timeZone = [NSTimeZone timeZoneForSecondsFromGMT:0];
    dateFormatter.dateFormat = @"dd.MM.yyyy";
    return [dateFormatter dateFromString:dateString];
}

@end
