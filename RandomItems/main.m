//
//  main.m
//  RandomItems
//
//  Created by Zaur Giyasov on 17/04/2018.
//  Copyright © 2018 Zaur Giyasov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"
#import "Container.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        /* 2 - 1:
        // Creating a muttable array
        NSMutableArray *items = [[NSMutableArray alloc]init];
        
        // Add objects
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        // first
        [items insertObject:@"Zero" atIndex:0];
        
        // Destroy array
//        items = nil;
        

        // iterating via fast enumerating
        for (NSString *str in items) {
            // Log
            NSLog(@"%@", str);
        }
         */
        
        ///////////
        /* 2 - 2
        Item *item = [[Item alloc]init];
        
        // This creates an NSString, "Red Sofa" and gives it to the BNRItem
        item.itemName = @"Red Sofa";
        
        // This creates an NSString, "A1B2C" and gives it to the BNRItem
        item.serialNumber = @"A1B2C";
        
        // This sends the value 100 to be used as the valueInDollars of this BNRItem
        [item setValueInDollars:100];
         */
        
        /* 2 - 3
        Item *item = [[Item alloc]initWithItemName:@"Red Sofa" valueInDollars:100 serialNumber:@"A1B2C"];
        Item *itemWithName = [[Item alloc]initWithItemName:@"Yellow Sofa"];
        Item *itemChinaMaserprice = [[Item alloc]init];
        
        NSLog(@"\n%@, %@, %@, %d", [item itemName], [item dateCreated], [item serialNumber], [item valueInDollars]);
         
         NSLog(@"%@", item.description);
         NSLog(@"%@", itemWithName.description);
         NSLog(@"%@", itemChinaMaserprice.description);
         
        */
        
        /* 2 - 4
        // Creating a muttable array
        NSMutableArray *items = [[NSMutableArray alloc]init];
        
        // Create 10 items and put it in array
        for (int i = 0; i < 10; i++) {
            Item *item = [Item randomItem];
            [items addObject:item];
        }
         
         // 2 - 6
         id lastObj = [items lastObject];
         // error
         [lastObj count];
         
        
        for (Item *temp in items) {
            NSLog(@"\n%@", temp);
        }
        
        */
        
        /////////////////////////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////////////////////////
        /* Bronze Challenge: Bug Finding
        
        Create a bug in your program by asking for the eleventh item in the array. Run it and note the exception that gets thrown.
         */
        
        // Out if range error
        // [items removeObjectAtIndex:11];
        
        /* Out if range error
         *** Terminating app due to uncaught exception 'NSRangeException', reason: '*** -[__NSArrayM removeObjectsInRange:]: range {11, 1} extends beyond bounds [0 .. 9]'
         */
        
        
        /////////////////////////////////////////////////////////////////////////////////////////////
        /*
         Silver Challenge: Another Initializer
         
         Create another initializer method for the BNRItem class. This initializer is not the designated initializer of BNRItem. It takes an instance of NSString that identifies the itemName of the item and an instance of NSString that identifies the serialNumber.
        
         
        Item *initWithNameAndSerial = [[Item alloc]initWithItemName:@"Silver Challenge" serialNumber:@"111-222-333"];
        NSLog(@"\n%@", initWithNameAndSerial.description);
        
        */
        
        /////////////////////////////////////////////////////////////////////////////////////////////
        /*
        Gold Challenge: Another Class
        
        
        // Creating a muttable array
        NSMutableArray *items = [[NSMutableArray alloc]init];
        // Create Stock Items (new class)
        Container *containerItems = [[Container alloc]init];
        NSLog(@"%@", containerItems.description);
        
        // Create 10 items and put it in array, print they
        NSLog(@"Add 10 items in temp array");
        for (int i = 0; i < 10; i++) {
            Item *item = [Item randomItem];
            [items addObject:item];
        }
        NSLog(@"%@", items.description);
        
        // put 10 items in 1 container and log it
        NSLog(@"Put 10 items in 1 container and log it");
        containerItems.subitems = items;
        NSLog(@"%@", containerItems.description);
         
        */
        
        // 3 - 1
        // Creating a muttable array
        NSMutableArray *items = [[NSMutableArray alloc]init];
        Item *backpack = [[Item alloc]initWithItemName:@"Backpack"];
        [items addObject:backpack];
        
        Item *calculator = [[Item alloc]initWithItemName:@"Calculator"];
        [items addObject:calculator];
        
        backpack.containedItem = calculator;
        
        NSLog(@"Print Items");
        for (Item *temp in items) {
            NSLog(@"\n%@", temp);
        }
        
        // dealloc
        backpack = nil;
        calculator = nil;
        items = nil;
        
        

    }
    return 0;
}
