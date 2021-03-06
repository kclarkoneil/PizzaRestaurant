//
//  Kitchen.h
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryService.h"

@class Kitchen;
@protocol KitchenDelegate <NSObject>

-(BOOL)kitchen:(Kitchen*)kitchen shouldMakePizzaOfSize:(NSInteger) size andToppings: (NSArray*)toppings;
-(BOOL)kitchenShouldUpgradeOrder: (Kitchen *) kitchen;
-(void)initiatePizzaDelivery: (Pizza*)pizza withService:(DeliveryService*) skipTheDishes;
@optional
-(void)kitchenDidMakePizza: (Pizza *)pizza;



@end

@interface Kitchen : NSObject
@property (nonatomic, strong) id <KitchenDelegate> delegate;

-(Pizza *)makePizzaWithSize:(NSInteger)size toppings:(NSArray *)toppings;

@end
