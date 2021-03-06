//
//  HRPGURLParser.h
//  Habitica
//
//  Created by Phillip Thelen on 12/05/16.
//  Copyright © 2016 Phillip Thelen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HRPGURLParser : NSObject {
    NSArray *variables;
}

@property (nonatomic, retain) NSArray *variables;

- (id)initWithURLString:(NSString *)url;
- (NSString *)valueForVariable:(NSString *)varName;

@end