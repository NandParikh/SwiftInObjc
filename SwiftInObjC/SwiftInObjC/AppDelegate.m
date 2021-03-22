//
//  AppDelegate.m
//  SwiftInObjC
//
//  Created by Nand Parikh on 22/03/21.
//

/*
 Bridging header - Use Swift in Objective C
 - create objective c project
 - add swift file in it with NSObject and create any method with @obj prefix so,
 It can be accessible by objective c file.
 - add bridging header
 - build settings - Packaging - define modules -> YES
 - in objective c file #import “ProjectName-Swift.h”
 - in objective c file create object of your swift file and use it’s properties

 */

#import "AppDelegate.h"
#import "SwiftInObjC-Swift.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    Test *objTest = [[Test alloc]init];
    [objTest printdata];
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
