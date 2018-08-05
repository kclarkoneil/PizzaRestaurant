//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Kit Clark-O'Neil on 2018-08-04.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"

@implementation DeliveryService


-(void)deliverPizza:(Pizza *)pizza {
    
    
    DeliveryCar *stevesSon = [[DeliveryCar alloc] init];
    [stevesSon deliverPizza:pizza];
    [_deliveryHistory addObject:pizza];
    
    
    NSLog(@"%lu %@ has been recorded in the database", pizza.size, pizza.toppings);
}

@end
