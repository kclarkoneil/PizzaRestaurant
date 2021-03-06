//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "Kitchen.h"
#import "GoodManager.h"
#import "BadManager.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        Kitchen *steveAndDavesPizza = [Kitchen new];
        
        //create managers and choose between them
        GoodManager *dave = [[GoodManager alloc] init];
        BadManager *steve = [[BadManager alloc] init];
        int fate = 0; //arc4random_uniform(2); 
        if (fate == 0)
            steveAndDavesPizza.delegate = dave;
        else
            steveAndDavesPizza.delegate = steve;
        DeliveryService *doorDash = [[DeliveryService alloc] init];

 
            
            
        NSLog(@"Please pick your pizza size and toppings:");
        
       
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            NSString *pizzaSize = commandWords[0];
            NSInteger size;
            if ([pizzaSize isEqualToString:@"Large"])
            {
                size = 0;
            }
            else if ([pizzaSize isEqualToString:@"Medium"])
            {
                size = 1;
            }
            else if ([pizzaSize isEqualToString:@"Small"])
            {
                size = 2;
            }
            else break;
            NSMutableArray *toppings = [[NSMutableArray alloc] init];
            for (int i = 1; i < commandWords.count; i++)
            {
                [toppings addObject:commandWords[i]];
            }
            
        
            // And then send some message to the kitchen...
            Pizza *newPizza = [[Pizza alloc] init];
            newPizza = [steveAndDavesPizza makePizzaWithSize:size toppings:toppings];
            [steveAndDavesPizza.delegate initiatePizzaDelivery:newPizza withService:doorDash];
            
            
        }

    }
    return 0;
}

