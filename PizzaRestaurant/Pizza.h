//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Kit Clark-O'Neil on 2018-08-03.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, size){
    Small,
    Medium,
    Large
};

@interface Pizza : NSObject

@property NSInteger size;
@property NSArray *toppings;
-(instancetype)initWithSize:(NSInteger)size andToppings: (NSArray*) toppings;

@end
