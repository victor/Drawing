//
//  DrawingAppDelegate.h
//  Drawing
//
//  Created by Victor Jalencas on 30/01/12.
//  Copyright 2012 Victor Jalencas. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DrawingViewController;

@interface DrawingAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    DrawingViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet DrawingViewController *viewController;

@end

