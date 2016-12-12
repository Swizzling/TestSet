//
//  ViewController.m
//  InstrumentsTest
//
//  Created by Jack on 5/12/16.
//  Copyright © 2016 mushank. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray *array_1 = [NSMutableArray array];
    NSMutableArray *array_2 = [NSMutableArray array];
    [array_1 addObject:array_2];
    [array_2 addObject:array_1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
