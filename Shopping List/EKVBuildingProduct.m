//
//  EKVBuildingProduct.m
//  Shopping List
//
//  Created by Eduard Kolenov on 09.12.15.
//  Copyright © 2015 Eduard Kolenov. All rights reserved.
//

#import "EKVBuildingProduct.h"

@implementation EKVBuildingProduct

- (instancetype)init
{
    self = [super init];
    if (self) {
        _productHeight = 0.;
        _productWidth = 0;
    }
    return self;
}

-(instancetype) initWithProductName:(NSString *)name andProductKind:(NSString *)kind{
    self = [super initWithProductName:name andProductKind:kind];
    if (self) {
        _productHeight = 0;
        _productWidth = 0;
    }
    return self;
}

-(NSString*) describe {
    return [NSString stringWithFormat:
            @"%@\nProduct Height: %f\nProduct Width: %f\n\n",
            [super describe],
            self.productHeight,
            self.productWidth];
}

@end
