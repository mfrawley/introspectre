//
//  IntrospectreTest.m
//  introspectre
//
//  Created by Mark on 10.04.15.
//  Copyright (c) 2015 Mark Frawley. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Introspectre.h"

@interface IntrospectreTest : XCTestCase
@end

@implementation IntrospectreTest {
    Introspectre *_spectre;
}

- (void)setUp {
    _spectre = [[Introspectre alloc] init];
    [super setUp];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testMethodsForClass {
    NSArray *methods = [_spectre methodsForClass:[Introspectre class]];
    XCTAssertEqual(methods.count, 2);
}

- (void)testGetClasses {
    NSArray *classes = [_spectre getClassList];
//    NSLog(@"classes %@", classes);
    XCTAssertNotEqual(classes.count, 0);
}

@end
