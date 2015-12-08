//
//  EKVBuildingProduct.h
//  Shopping List
//
//  Created by Eduard Kolenov on 09.12.15.
//  Copyright © 2015 Eduard Kolenov. All rights reserved.
//


#import "EKVGoods.h"

@interface EKVBuildingProduct : EKVGoods

//индивидуальные свойства: высота, ширина
@property (nonatomic, assign) CGFloat productHeight;
@property (nonatomic, assign) CGFloat productWidth;

@end
