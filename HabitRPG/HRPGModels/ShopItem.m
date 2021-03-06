//
//  ShopItem.m
//  Habitica
//
//  Created by Phillip Thelen on 12/07/16.
//  Copyright © 2016 Phillip Thelen. All rights reserved.
//

#import "ShopItem.h"
#import "ShopCategory.h"

@implementation ShopItem

- (NSString *)imageName {
    [self willAccessValueForKey:@"imageName"];
    NSString *imageName = [self primitiveValueForKey:@"imageName"];
    [self didAccessValueForKey:@"imageName"];
    if (imageName) {
        return imageName;
    } else {
        return [@"shop_" stringByAppendingString:self.key];
    }
}

- (NSString *)readableUnlockCondition {
    if ([self.unlockCondition isEqualToString:@"party invite"]) {
        return NSLocalizedString(@"Invite Friends", nil);
    } else {
        return nil;
    }
}

- (BOOL)canBuy:(NSNumber *)currencyAmount {
    return [currencyAmount floatValue] >= [self.value floatValue] && ![self.locked boolValue];
}

@end
