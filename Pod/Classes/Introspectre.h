//
//  Introspectre.h
//  introspectre
//
//  Created by Mark on 10.04.15.
//  Copyright (c) 2015 Mark Frawley. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Introspectre : NSObject

- (NSArray *)getClassList;
- (NSArray *)methodsForClass:(Class)clz;

@end
