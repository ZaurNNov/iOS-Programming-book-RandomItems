//
//  main.m
//  RandomItems
//
//  Created by Zaur Giyasov on 17/04/2018.
//  Copyright © 2018 Zaur Giyasov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"

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
        
        // 2 - 4
        // Creating a muttable array
        NSMutableArray *items = [[NSMutableArray alloc]init];
        
        // Create 10 items and put it in array
        for (int i = 0; i < 10; i++) {
            Item *item = [Item randomItem];
            [items addObject:item];
        }
         
         /* 2 - 6
         id lastObj = [items lastObject];
         // error
         [lastObj count];
         */
        
        for (Item *temp in items) {
            NSLog(@"\n%@", temp);
        }
        
        items = nil;
        
    }
    return 0;
}
