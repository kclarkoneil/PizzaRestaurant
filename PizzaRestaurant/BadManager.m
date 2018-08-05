//
//  BadManager.m
//  PizzaRestaurant
//
//  Created by Kit Clark-O'Neil on 2018-08-04.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "BadManager.h"

@implementation BadManager

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return NO;
}
-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(NSInteger)size andToppings:(NSArray *)toppings{
    for (NSString *topping in toppings) {
        if ([topping isEqualToString:@"anchovies"] || [topping isEqualToString:@"Anchovies"]){
            
            return NO;
        }
    }
    
       return YES;
    }
-(void)initiatePizzaDelivery:(Pizza *)pizza withService:(DeliveryService *)skipTheDishes {
    [skipTheDishes deliverPizza:pizza];
}
    




@end
