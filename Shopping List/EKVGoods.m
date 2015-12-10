//
//  EKVGoods.m
//  Shopping List
//
//  Created by Eduard Kolenov on 09.12.15.
//  Copyright © 2015 Eduard Kolenov. All rights reserved.
//

#import "EKVGoods.h"

@implementation EKVGoods

- (instancetype)init
{
    self = [super init];
    if (self) {
      self =  [self initWithProductName:@"Indefinite" andProductKind:@"Indefinite"];
    }
    return self;
}

-(instancetype) initWithProductName:(NSString *)name andProductKind:(NSString *)kind{
    self = [super init];
    if (self) {
        _productName = name;
        _productKind = kind;
        _productPrice = 0;
    }
    return self;
}

- (NSString*) describe{
    return [NSString stringWithFormat:
            @"\n\nProduct Name: %@\nProduct Kind: %@\nProduct Price: %f",
            self.productName,
            self.productKind,
            self.productPrice];
}

@end
