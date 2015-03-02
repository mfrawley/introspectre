//
//  ViewController.m
//  blah
//
//  Created by Mark Frawley on 02/03/2015.
//  Copyright (c) 2015 Mark Frawley. All rights reserved.
//
#import <objc/objc-runtime.h>
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self printClassList];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


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
                [self printMethodsForClass:c];
            }
        }
        free(classes);
    }
}

- (void)printMethodsForClass:(Class)clz {
    int i=0;
    unsigned int mc = 0;

    //id obj = [[clz alloc] init];
    Method * mlist = class_copyMethodList(clz, &mc);

    for(i=0;i<mc;i++) {
        NSLog(@"Method no #%d: %s", i, sel_getName(method_getName(mlist[i])));
    }

}
@end
