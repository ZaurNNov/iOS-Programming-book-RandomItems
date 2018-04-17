//
//  Container.m
//  RandomItems
//
//  Created by Zaur Giyasov on 17/04/2018.
//  Copyright © 2018 Zaur Giyasov. All rights reserved.
//

#import "Container.h"

@implementation Container

// self description
-(NSString *)description {
    
    // summ
    int summ = 0;
    
    NSMutableArray *arr = self.subitems;
    for (int i = 0; i < arr.count; i++) {
        summ += self.valueInDollars + [arr[i] valueInDollars];
    }

    return [NSString stringWithFormat:@"Item + Container total: %d \n%@ ", summ, arr];
}

@end
