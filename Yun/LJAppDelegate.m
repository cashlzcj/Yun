//
//  LJAppDelegate.m
//  Yun
//
//  Created by xh on 13-12-5.
//  Copyright (c) 2013年 xh. All rights reserved.
//

#import "LJAppDelegate.h"

@implementation LJAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    
//    UIImage *storyMenuItemImage = [UIImage imageNamed:@"bg-menuitem.png"];
//    UIImage *storyMenuItemImagePressed = [UIImage imageNamed:@"bg-menuitem-highlighted.png"];
    
    // Camera MenuItem.
    QuadCurveMenuItem *cameraMenuItem = [[QuadCurveMenuItem alloc] initWithImage:[UIImage imageNamed:@"home_cloud1.png"]
                                                                highlightedImage:[UIImage imageNamed:@"home_cloud1.png"]
                                                                    ContentImage:nil
                                                         highlightedContentImage:nil];
    cameraMenuItem.itemTag = 1001;
    
    // People MenuItem.
    QuadCurveMenuItem *peopleMenuItem = [[QuadCurveMenuItem alloc] initWithImage:[UIImage imageNamed:@"home_cloud2.png"]
                                                                highlightedImage:[UIImage imageNamed:@"home_cloud2.png"]
                                                                    ContentImage:nil
                                                         highlightedContentImage:nil];
    peopleMenuItem.itemTag = 1002;
    
    // Place MenuItem.
    QuadCurveMenuItem *placeMenuItem = [[QuadCurveMenuItem alloc] initWithImage:[UIImage imageNamed:@"home_cloud3.png"]
                                                               highlightedImage:[UIImage imageNamed:@"home_cloud3.png"]
                                                                   ContentImage:nil
                                                        highlightedContentImage:nil];
    placeMenuItem.itemTag = 1003;
    
    // Music MenuItem.
    QuadCurveMenuItem *musicMenuItem = [[QuadCurveMenuItem alloc] initWithImage:[UIImage imageNamed:@"home_cloud4.png"]
                                                               highlightedImage:[UIImage imageNamed:@"home_cloud4.png"]
                                                                   ContentImage:nil
                                                        highlightedContentImage:nil];
    musicMenuItem.itemTag = 1004;
    
    // Thought MenuItem.
    QuadCurveMenuItem *thoughtMenuItem = [[QuadCurveMenuItem alloc] initWithImage:[UIImage imageNamed:@"home_cloud5.png"]
                                                                 highlightedImage:[UIImage imageNamed:@"home_cloud5.png"]
                                                                     ContentImage:nil
                                                          highlightedContentImage:nil];
    thoughtMenuItem.itemTag = 1005;
    
    NSArray *menus = [NSArray arrayWithObjects:cameraMenuItem, peopleMenuItem, placeMenuItem, musicMenuItem, thoughtMenuItem, nil];
    [cameraMenuItem release];
    [peopleMenuItem release];
    [placeMenuItem release];
    [musicMenuItem release];
    [thoughtMenuItem release];
    
    QuadCurveMenu *menu = [[QuadCurveMenu alloc] initWithFrame:self.window.bounds menus:menus];
    menu.delegate = self;
    menu.backgroundColor = [UIColor lightGrayColor];
    [self.window addSubview:menu];
    [menu release];
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)quadCurveMenu:(QuadCurveMenu *)menu didSelectIndex:(NSInteger)idx
{
    NSLog(@"Select the index : %d",idx);
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
