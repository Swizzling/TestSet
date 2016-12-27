//
//  ViewController.m
//  KVOTest
//
//  Created by Jack on 5/10/16.
//  Copyright © 2016 mushank. All rights reserved.
//

#import "ViewController.h"
#import "Jack.h"
#import "NSObject+DLIntrospection.h"

static NSString *kPropertyThatChanges = @"name";

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Jack *jack = [[Jack alloc] init];
    // breakpoint 1
    [jack addObserver:self forKeyPath:kPropertyThatChanges options:NSKeyValueObservingOptionNew context:nil];
    // breakpoint 2
    jack.name = @"Jack";
    [jack removeObserver:self forKeyPath:kPropertyThatChanges];
    // breakpoint 3
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context {
    if ([keyPath isEqualToString:kPropertyThatChanges]) {
        NSLog(@"%@",object);
        NSLog(@"%@",change);
        NSLog(@"%@",context);
    }
}

@end
