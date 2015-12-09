//
//  EKVFoodProduct.m
//  Shopping List
//
//  Created by Eduard Kolenov on 09.12.15.
//  Copyright © 2015 Eduard Kolenov. All rights reserved.
//

#import "EKVFoodProduct.h"

@implementation EKVFoodProduct

- (instancetype)init
{
    self = [super init];
    if (self) {
        _productWeight = 0.0f;
        _productDateManufacture = [NSDate date];
        _productDateExpiration = [NSDate date];
    }
    return self;
}

-(instancetype) initWithProductName:(NSString *)name andProductKind:(NSString *)kind{
    self = [super initWithProductName:name andProductKind:kind];
    if (self) {
        _productWeight = 0.0f;
        _productDateManufacture = [NSDate date];
        _productDateExpiration = [NSDate date];
    }
    return self;
}

-(NSString*) describe {
    return [NSString stringWithFormat:
            @"\n%@\nProduct Weight: %f\nDate Manufacture: %@\nDate Expiration: %@",
            [super describe],
            self.productWeight,
            self.productDateManufacture,
            self.productDateExpiration];
}

@end
