//
//  GoodManager.m
//  PizzaRestaurant
//
//  Created by Kit Clark-O'Neil on 2018-08-04.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "GoodManager.h"
#import "DeliveryService.h"
@implementation GoodManager

-(BOOL)kitchen:(Kitchen*)kitchen shouldMakePizzaOfSize:(NSInteger) size andToppings: (NSArray*)toppings{
    return YES;
}

-(BOOL)kitchenShouldUpgradeOrder: (Kitchen *) kitchen {
    return YES;
}

-(void)kitchenDidMakePizza: (Pizza *)pizza {
    
    NSLog(@"Your %lu %@ is on its way", (long)pizza.size, pizza.toppings);
    
}
-(void)initiatePizzaDelivery: (Pizza*)pizza withService:(DeliveryService*) skipTheDishes {
    [skipTheDishes deliverPizza:pizza];
}

@end
