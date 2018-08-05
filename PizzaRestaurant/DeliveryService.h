//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Kit Clark-O'Neil on 2018-08-04.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DeliveryCar.h"
#import "Pizza.h"



@interface DeliveryService : NSObject

@property NSMutableArray *deliveryHistory;

-(void)deliverPizza: (Pizza*) pizza;

@end
