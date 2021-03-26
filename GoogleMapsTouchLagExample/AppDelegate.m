//
//  AppDelegate.m
//  GoogleMapsTouchLagExample
//
//  Created by Martynas on 2021-03-26.
//

#import "AppDelegate.h"
#import <GoogleMaps/GoogleMaps.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
#warning add it
    [GMSServices provideAPIKey:@""];
    
    self.window.rootViewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateInitialViewController];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}




@end
