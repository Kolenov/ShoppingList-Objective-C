//
//  EKVGoods.h
//  Shopping List
//
//  Created by Eduard Kolenov on 09.12.15.
//  Copyright © 2015 Eduard Kolenov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface EKVGoods : NSObject

@property (nonatomic, strong) NSString *productName;
@property (nonatomic, strong) NSString *productKind;
@property (nonatomic, assign) CGFloat   productPrice;

- (instancetype) initWithProductName:(NSString*)name andProductKind:(NSString*)kind;

- (void) describe;

@end
