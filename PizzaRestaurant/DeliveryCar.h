//
//  DeliveryCar.h
//  PizzaRestaurant
//
//  Created by Kit Clark-O'Neil on 2018-08-04.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DeliveryService.h"
#import "Pizza.h"


@interface DeliveryCar : NSObject

-(void)deliverPizza:(Pizza*)pizza;

@end
