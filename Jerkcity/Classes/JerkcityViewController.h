//
//  JerkcityViewController.h
//  Jerkcity
//
//  Created by Hogarth on 11-01-15.
//  This code is not copyrighted.  It is released into the public domain.
//

#import <UIKit/UIKit.h>
#import "GayExperience.h"

@interface JerkcityViewController : UIViewController <UIScrollViewDelegate> {
	UIScrollView *pornView;
	UIImageView *pissVid;
	UIButton *previousBongRip;
	UIButton *nextBongRip;
	
	GayExperience *gayExperience;
}

@property (nonatomic, retain) IBOutlet UIScrollView *pornView;
@property (nonatomic, retain) IBOutlet UIImageView *pissVid;
@property (nonatomic, retain) IBOutlet UIButton *previousBongRip;
@property (nonatomic, retain) IBOutlet UIButton *nextBongRip;

- (IBAction)passBongForward;
- (IBAction)passBongBack;

@end

