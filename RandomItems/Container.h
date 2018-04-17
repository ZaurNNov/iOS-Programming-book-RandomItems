//
//  Container.h
//  RandomItems
//
//  Created by Zaur Giyasov on 17/04/2018.
//  Copyright © 2018 Zaur Giyasov. All rights reserved.
//

#import "Item.h"

@interface Container : Item

@property (nonatomic,strong) NSMutableArray *subitems;

- (NSString *)description;

@end
