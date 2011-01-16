//
//  JerkcityViewController.m
//  Jerkcity
//
//  Created by Hogarth on 11-01-15.
//  This code is not copyrighted.  It is released into the public domain.
//

#import "JerkcityViewController.h"


@interface JerkcityViewController (Private)

- (void)displayDickPic:(UIImage *)bongHit;

@end



@implementation JerkcityViewController

@synthesize pornView, previousBongRip, nextBongRip, pissVid;

- (IBAction)passBongForward {
	[self displayDickPic:[gayExperience nextDickPic]];
}

- (IBAction)passBongBack {
	[self displayDickPic:[gayExperience previousDickPic]];
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
	return pissVid;
}

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	gayExperience = [[GayExperience alloc] init];
	UIImage *dickPic = [gayExperience currentDickPic];
	[self displayDickPic:dickPic];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	[super viewDidUnload];
	[gayExperience release];
	gayExperience = nil;
}


- (void)dealloc {
	[pornView release];
	[pissVid release];
	[nextBongRip release];
	[previousBongRip release];
	[gayExperience release];
    [super dealloc];
}

@end

@implementation JerkcityViewController (Private)

- (void)displayDickPic:(UIImage *)dickPic {
	[pissVid setImage:dickPic];
	[pissVid setFrame:CGRectMake(0, 0, [dickPic size].width, [dickPic size].height)];
	[pornView setContentSize:[dickPic size]];
}

@end
