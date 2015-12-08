//
//  EKVFoodProduct.h
//  Shopping List
//
//  Created by Eduard Kolenov on 09.12.15.
//  Copyright © 2015 Eduard Kolenov. All rights reserved.
//

#import "EKVGoods.h"

@interface EKVFoodProduct : EKVGoods

//вес, дата производства, срок годности
@property (nonatomic, assign) CGFloat   productWeight;
@property (nonatomic, strong) NSDate    *productDateManufacture;
@property (nonatomic, strong) NSDate    *productDateExpiration;

@end
