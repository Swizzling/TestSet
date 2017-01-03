//
//  ViewController.m
//  CopyTest
//
//  Created by Jack on 12/28/16.
//  Copyright © 2016 mushank. All rights reserved.
//

#ifdef DEBUG
#define NSLog(FORMAT, ...) fprintf(stderr,"%s\n",[[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else
#define NSLog(...)
#endif

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self testString];
    
    [self testMutableString];
    
    [self testArray];
    
    [self testMutableArray];
    
    [self testCustomObject];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// NSString
- (void)testString{
    NSString *str = @"Jack and Rose";
    NSString *cStr = [str copy];
    NSMutableString *mcStr = [str mutableCopy];

    NSLog(@"=== NSString Test ===");
    NSLog(@"str: %p : %@",str, str);
    NSLog(@"cStr: %p : %@",cStr, cStr);
    NSLog(@"mcStr: %p : %@",mcStr, mcStr);
}
// NSMutableString
- (void)testMutableString{
    NSMutableString *str = [NSMutableString stringWithString:@"Jack and Rose"];
    NSString *cStr = [str copy];
    NSMutableString *mcStr = [str mutableCopy];
    
    NSLog(@"=== NSMutableString Test ===");
    NSLog(@"str: %p : %@",str, str);
    NSLog(@"cStr: %p : %@",cStr, cStr);
    NSLog(@"mcStr: %p : %@",mcStr, mcStr);
}
// NSArray
- (void)testArray{
    NSMutableArray *subArr = [NSMutableArray arrayWithArray:@[@"Jack"]];
    
    NSArray *arr = @[subArr];
    NSArray *cArr = [arr copy];
    NSMutableArray *mcArr = [arr mutableCopy];
    
    NSLog(@"=== NSArray Test ===");
    NSLog(@"arr: %p : %@",arr, arr);
    NSLog(@"cArr: %p : %@",cArr, cArr);
    NSLog(@"mcArr: %p : %@",mcArr, mcArr);
    
    [subArr addObject:@"Rose"];
    NSLog(@"=== NSArray Test - subArr add object===");
    NSLog(@"arr: %p : %@",arr, arr);
    NSLog(@"cArr: %p : %@",cArr, cArr);
    NSLog(@"mcArr: %p : %@",mcArr, mcArr);
    
    subArr = [NSMutableArray arrayWithArray:@[@"Jack and Rose"]];
    NSLog(@"=== NSArray Test - subArr reinit===");
    NSLog(@"arr: %p : %@",arr, arr);
    NSLog(@"cArr: %p : %@",cArr, cArr);
    NSLog(@"mcArr: %p : %@",mcArr, mcArr);
}
// NSMutableArray
- (void)testMutableArray{
    NSMutableArray *subArr = [NSMutableArray arrayWithArray:@[@"Jack"]];
    
    NSMutableArray *arr = [NSMutableArray arrayWithArray:@[subArr]];
    NSArray *cArr = [arr copy];
    NSMutableArray *mcArr = [arr mutableCopy];
    
    NSLog(@"=== NSMutableArray Test ===");
    NSLog(@"arr: %p : %@",arr, arr);
    NSLog(@"cArr: %p : %@",cArr, cArr);
    NSLog(@"mcArr: %p : %@",mcArr, mcArr);
    
    [subArr addObject:@"Rose"];
    NSLog(@"=== NSMutableArray Test - subArr add object===");
    NSLog(@"arr: %p : %@",arr, arr);
    NSLog(@"cArr: %p : %@",cArr, cArr);
    NSLog(@"mcArr: %p : %@",mcArr, mcArr);
    
    subArr = [NSMutableArray arrayWithArray:@[@"Jack and Rose"]];
    NSLog(@"=== NSMutableArray Test - subArr reinit===");
    NSLog(@"arr: %p : %@",arr, arr);
    NSLog(@"cArr: %p : %@",cArr, cArr);
    NSLog(@"mcArr: %p : %@",mcArr, mcArr);
}
// Custom Object
- (void)testCustomObject{
    Person *jack = [[Person alloc] init];
    jack.name = @"Jack";
    jack.age = 18;
    Person *cJack = [jack copy];
    Person *mcJack = [jack mutableCopy];
    
    NSLog(@"=== Custom Object Test ===");
    NSLog(@"jack: %p : %@",jack, jack);
    NSLog(@"cJack: %p : %@",cJack, cJack);
    NSLog(@"mcJack: %p : %@",mcJack, mcJack);
}

@end
