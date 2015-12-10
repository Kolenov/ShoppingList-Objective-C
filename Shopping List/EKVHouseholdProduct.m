//
//  EKVHouseholdProduct.m
//  Shopping List
//
//  Created by Eduard Kolenov on 09.12.15.
//  Copyright © 2015 Eduard Kolenov. All rights reserved.
//

#import "EKVHouseholdProduct.h"

@implementation EKVHouseholdProduct

- (instancetype)init
{
    self = [super init];
    if (self) {
        _productDesignation = @"Default";
        _productDateManufacture = [NSDate date];
        _productDateExpiration = [NSDate date];
    }
    return self;
}

-(NSString*) describe {
    return [NSString stringWithFormat:
            @"%@\nProduct Designation: %@\nDate Manufacture: %@\nDate Expiration: %@\n\n",
            [super describe],
            self.productDesignation,
            self.productDateManufacture,
            self.productDateExpiration];
}

@end
