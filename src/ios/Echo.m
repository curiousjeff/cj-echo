#import "Echo.h"
#import <Cordova/CDV.h>

@implementation Echo

- (void) echo:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];

    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    // Send the result to the commandDelegate and
    // execute the sucess or failure callback accordingly
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end