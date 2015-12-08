//
//  EKVHouseholdProduct.h
//  Shopping List
//
//  Created by Eduard Kolenov on 09.12.15.
//  Copyright © 2015 Eduard Kolenov. All rights reserved.
//

#import "EKVGoods.h"

@interface EKVHouseholdProduct : EKVGoods
//индивидуальные свойства: предназначение, дата производства, срок годности

@property (nonatomic, strong) NSString  *productDesignation;
@property (nonatomic, strong) NSDate    *productDateManufacture;
@property (nonatomic, strong) NSDate    *productDateExpiration;

@end
