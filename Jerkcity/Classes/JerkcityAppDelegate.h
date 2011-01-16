//
//  JerkcityAppDelegate.h
//  Jerkcity
//
//  Created by Hogarth on 11-01-15.
//  This code is not copyrighted.  It is released into the public domain.
//

#import <UIKit/UIKit.h>

@class JerkcityViewController;

@interface JerkcityAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    JerkcityViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet JerkcityViewController *viewController;

@end

