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

    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];

    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}


- (void) disable:(CDVInvokedUrlCommand*)command
{   
    [[UIApplication sharedApplication] setIdleTimerDisabled:YES];
    [UIApplication sharedApplication].idleTimerDisabled = YES;

    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];

    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
