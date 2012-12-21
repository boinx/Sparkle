//
//  SUWindowController.m
//  Sparkle
//
//  Created by Andy Matuschak on 2/13/08.
//  Copyright 2008 Andy Matuschak. All rights reserved.
//

#import "SUWindowController.h"
#import "SUHost.h"

@implementation SUWindowController

- (id)initWithHost:(SUHost *)host windowNibName:(NSString *)nibName
{
//	NSString *path = [[NSBundle bundleForClass:[self class]] pathForResource:nibName ofType:@"nib"];
//	if (path == nil) // Slight hack to resolve issues with running Sparkle in debug configurations.
//	{
//		NSString *frameworkPath = [[[host bundle] sharedFrameworksPath] stringByAppendingPathComponent:@"Sparkle.framework"];
//		NSBundle *framework = [NSBundle bundleWithPath:frameworkPath];
//		path = [framework pathForResource:nibName ofType:@"nib"];
//	}
//	self = [super initWithWindowNibPath:path owner:self];
	
	/* looks like -initWithWindowNibPaht:owner: is should not be used with pathes inside main bundle or framework bunlde:

	 Use this method if your nib file is at a fixed location (which is not inside either the file’s owner’s class’s bundle or in the application’s main bundle).
	 
	 Will try to load the nib by it's name.
	 */
	
	self = [super initWithWindowNibName:nibName owner:self];
	return nil;
}

@end
