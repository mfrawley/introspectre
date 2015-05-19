//
//  CreditCardCheck.h
//  blah
//
//  Created by Mark Frawley on 19/05/2015.
//  Copyright (c) 2015 Mark Frawley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

@class CreditCardCheck;

@protocol CreditCardCheckJSExports <JSExport>
+ (instancetype)createInstance;
- (BOOL)valid:(NSString *)ccNumStr;
@end

@interface CreditCardCheck : NSObject<CreditCardCheckJSExports>
+ (instancetype)createInstance;
- (BOOL)valid:(int)aLuhnNo;
@end
