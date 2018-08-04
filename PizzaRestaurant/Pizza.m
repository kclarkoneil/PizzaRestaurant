//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Kit Clark-O'Neil on 2018-08-03.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

-(instancetype)initWithSize:(NSInteger)size andToppings: (NSArray*) toppings{

    self = [super init];
    if (self) {
        _size = size;
        _toppings = toppings;
    }
    return self;
}


@end
