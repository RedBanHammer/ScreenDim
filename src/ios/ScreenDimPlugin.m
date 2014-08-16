//
//  ScreenDimPlugin.m
//  ios-cordova
//
//  Created by Andrew Lunny on 12-07-11.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ScreenDimPlugin.h"
#import <Cordova/CDV.h>

@implementation ScreenDimPlugin

- (void) enable:(CDVInvokedUrlCommand*)command
{	
    [[UIApplication sharedApplication] setIdleTimerDisabled:NO];
    [UIApplication sharedApplication].idleTimerDisabled = NO;
}


- (void) disable:(CDVInvokedUrlCommand*)command
{   
    [[UIApplication sharedApplication] setIdleTimerDisabled:YES];
    [UIApplication sharedApplication].idleTimerDisabled = YES;
}

@end
