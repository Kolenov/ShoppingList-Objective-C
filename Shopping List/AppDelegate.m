//
//  AppDelegate.m
//  Shopping List
//
//  Created by Eduard Kolenov on 08.12.15.
//  Copyright © 2015 Eduard Kolenov. All rights reserved.
//

#import "AppDelegate.h"
#import "EKVGoods.h"
#import "EKVFoodProduct.h"
#import "EKVBuildingProduct.h"
#import "EKVHouseholdProduct.h"
#import "NSDate+EKVDateTools.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    EKVGoods *productGeneric = [EKVGoods new];
    
    EKVFoodProduct *banana = [[EKVFoodProduct alloc] initWithProductName:@"Banana" andProductKind:@"Fruits"];
    banana.productPrice = 15.30;
    banana.productWeight = 150.65;
    banana.productDateManufacture = [[NSDate alloc] initDateWithString:@"20.10.2015"];
    banana.productDateExpiration = [[NSDate alloc] initWithDateYear:2015 andMonth:11 andDay:20];
    
    
    EKVFoodProduct *salmon = [[EKVFoodProduct alloc] initWithProductName:@"Salmon" andProductKind:@"Fish"];
    salmon.productPrice = 150.82;
    salmon.productWeight = 12.165;
    salmon.productDateManufacture = [[NSDate alloc] initWithDateYear:2015 andMonth:12 andDay:10];
    salmon.productDateExpiration = [[NSDate alloc] initWithDateYear:2015 andMonth:12 andDay:11];
    
    EKVBuildingProduct *window = [[EKVBuildingProduct alloc] initWithProductName:@"Small Window" andProductKind:@"Plastic Window"];
    window.productHeight = 150.5;
    window.productWidth = 150.0;
    window.productPrice = 300.05;
    
    EKVBuildingProduct *door = [[EKVBuildingProduct alloc] initWithProductName:@"Double door" andProductKind:@"Outer door"];
    door.productPrice = 450.26;
    door.productHeight = 2000.0;
    door.productWidth = 900.0;
    
    EKVHouseholdProduct *shampoo = [[EKVHouseholdProduct alloc] initWithProductName:@"Persian shampoo" andProductKind:@"Сleanser"];
    shampoo.productDesignation = @"For bathroom";
    shampoo.productPrice = 9.33;
    shampoo.productDateManufacture = [[NSDate alloc] initDateWithString:@"07.06.2014"];
    shampoo.productDateExpiration = [[NSDate alloc] initDateWithString:@"07.06.2016"];
    
    NSMutableArray* goodsList = [[NSMutableArray alloc] initWithObjects:banana, salmon, nil];
    [goodsList addObject:window];
    [goodsList addObject:door];
    [goodsList addObject:shampoo];
    [goodsList addObject:productGeneric];
    
    
    for (EKVGoods *product in goodsList) {
        NSLog(@"%@",[product describe]);
    }
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
