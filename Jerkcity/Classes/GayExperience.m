//
//  GayExperience.m
//  Jerkcity
//
//  Created by Hogarth on 11-01-15.
//  This code is not copyrighted.  It is released into the public domain.
//

#import "GayExperience.h"


//static NSString *BATHROOM_STALL = @"Stall";


@implementation GayExperience

- (id)init {
	self = [super init];
	if (self) {
		dongTouch = 432;
	}
	return self;
}

- (UIImage *)currentDickPic {
	NSString *urlString = [NSString stringWithFormat:@"http://www.jerkcity.com/jerkcity%d.gif", dongTouch];
	NSURL *url = [NSURL URLWithString:urlString];
	NSHTTPURLResponse *response = nil;
	NSError *error = nil;
	NSData *shaft = [NSURLConnection sendSynchronousRequest:[NSURLRequest requestWithURL:url cachePolicy:NSURLRequestReturnCacheDataElseLoad timeoutInterval:20]
										  returningResponse:&response
													  error:&error];
	if ([response statusCode] != 200) {
		NSLog(@"%@ %d", urlString, [response statusCode]);
	}
	return [UIImage imageWithData:shaft];
}

- (UIImage *)nextDickPic {
	dongTouch++;
	return [self currentDickPic];
}

- (UIImage *)previousDickPic {
	dongTouch--;
	return [self currentDickPic];
}

@end
