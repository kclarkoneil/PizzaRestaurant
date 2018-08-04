//
//  GoodManager.h
//  PizzaRestaurant
//
//  Created by Kit Clark-O'Neil on 2018-08-04.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"

@interface GoodManager : NSObject <KitchenDelegate>

-(BOOL)kitchen:(Kitchen*)kitchen shouldMakePizzaOfSize:(NSInteger) size andToppings: (NSArray*)toppings;
-(BOOL)kitchenShouldUpgradeOrder: (Kitchen *) kitchen;
-(void)kitchenDidMakePizza: (Pizza *)pizza;


@end
