//
//  Item.h
//  RandomItems
//
//  Created by Zaur Giyasov on 17/04/2018.
//  Copyright © 2018 Zaur Giyasov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject
{
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
}

// Class methods
+ (instancetype)randomItem;

// Designated init
-(instancetype)initWithItemName: (NSString *)name valueInDollars: (int)value serialNumber: (NSString *)serialNum;
//
-(instancetype)initWithItemName: (NSString *)name;

- (void)setItemName: (NSString *)str;
- (NSString *)itemName;

- (void)setSerialNumber: (NSString *)str;
- (NSString *)serialNumber;

- (void)setValueInDollars: (int)v;
- (int)valueInDollars;

- (NSDate *)dateCreated;


@end
