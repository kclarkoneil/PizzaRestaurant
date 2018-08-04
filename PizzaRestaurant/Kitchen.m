//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"
#import "GoodManager.h"
@implementation Kitchen

-(Pizza*)makePizzaWithSize:(NSInteger)size toppings:(NSArray *)toppings {
    
    Pizza *newPizza = [[Pizza alloc] initWithSize:size andToppings:toppings];
    if ([self.delegate kitchenShouldUpgradeOrder:self] == YES)
    {
    size = 0;
    }
    if ([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings] == NO)
    {
        NSLog(@"How dare you");
        return nil;
    }
    if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]== YES)
    {
        [self.delegate kitchenDidMakePizza: newPizza];
    }
    
    return newPizza;
}
-(void)orderIsReady:(Pizza *)newPizza {
    NSLog(@"Your number %lu %@ is ready!", newPizza.size, newPizza.toppings);
}


@end
