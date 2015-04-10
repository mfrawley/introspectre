//
//  Introspectre.m
//  introspectre
//
//  Created by Mark on 10.04.15.
//  Copyright (c) 2015 Mark Frawley. All rights reserved.
//
#import <objc/objc-runtime.h>
#import "Introspectre.h"

@implementation Introspectre

- (void)printClassList {
    int numClasses;
    Class * classes = NULL;
    
    classes = NULL;
    numClasses = objc_getClassList(NULL, 0);
    
    if (numClasses > 0 )
    {
        classes = (__unsafe_unretained Class *)malloc(sizeof(Class) * numClasses);
        numClasses = objc_getClassList(classes, numClasses);
        for (int i = 0; i < numClasses; i++) {
            Class c = classes[i];
            NSBundle *b = [NSBundle bundleForClass:c];
            if (b == [NSBundle mainBundle]) {
                const char*className = class_getName(c);
                if (strcmp(className, "AppDelegate") == 0) {
                    continue;
                }
                //[self printMethodsForClass:c];
            }
        }
        free(classes);
    }
}

- (NSArray *)methodsForClass:(Class)clz {
    NSMutableArray *methods = [[NSMutableArray alloc] init];
    int i=0;
    unsigned int mc = 0;
    
    //id obj = [[clz alloc] init];
    Method * mlist = class_copyMethodList(clz, &mc);
    
    for(i=0;i<mc;i++) {
        const char *methodName = sel_getName(method_getName(mlist[i]));
        NSString *methodNameStr = [NSString stringWithUTF8String:methodName];
        [methods setObject:methodNameStr atIndexedSubscript:i];
    }
    return [NSArray arrayWithArray:methods];
}

@end
