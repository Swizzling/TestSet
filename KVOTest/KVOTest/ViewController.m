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
    
    [jack addObserver:self forKeyPath:kPropertyThatChanges options:NSKeyValueObservingOptionNew context:nil];
    
    jack.name = @"jjj";
    
    [jack removeObserver:self forKeyPath:kPropertyThatChanges];
    
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
