//
//  AppDelegate.m
//  TimerDemo
//
//  Created by Jack on 2019/1/12.
//  Copyright © 2019 Jack. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()
@property (nonatomic, strong) NSTimer *tipsTimer;
@end

@implementation AppDelegate

- (void)timerCreate {
    self.tipsTimer = [NSTimer timerWithTimeInterval:5.f target:self selector:@selector(timerAction:) userInfo:nil repeats:YES];
    [[NSRunLoop mainRunLoop] addTimer:self.tipsTimer forMode:NSRunLoopCommonModes];
    [self timerLog:@"Timer_Init"];
}

- (void)timerAction:(NSTimer *)timer {
    [self timerLog:@"Timer_Action"];
}

- (void)timerLog:(NSString *)log {
    NSLog(@"------%@------", log);
    NSLog(@"CurrDate: %@", [NSDate date]);
    NSLog(@"Firetime: %@", self.tipsTimer.fireDate);
    NSLog(@"Interval: %f", self.tipsTimer.timeInterval);
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self timerCreate];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
//    [self timerLog:@"Timer_Background"];
}


- (void)applicationWillEnterForeground:(UIApplication *)application {

}


- (void)applicationDidBecomeActive:(UIApplication *)application {
//    [self timerLog:@"Timer_Foreground"];
}


- (void)applicationWillTerminate:(UIApplication *)application {

}


@end
