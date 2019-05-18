//
//  PXGifImporter.m
//  Pixen
//
//  Copyright 2004-2012 Pixen Project. All rights reserved.
//

#import "PXGifImporter.h"

@implementation PXGifImporter

+ (BOOL)fileAtURLIsAnimated:(NSURL *)url
{
	NSImage *tempImage   = [[NSImage alloc] initWithContentsOfURL:url];
	NSImageRep *imageRep = [[tempImage representations] firstObject];
	
	if ((imageRep != NULL) && ([imageRep isKindOfClass:[NSBitmapImageRep class]] == YES))
	{	
		NSBitmapImageRep *bitmapImageRep = (NSBitmapImageRep *)imageRep;
		int frameCount = [[bitmapImageRep valueForProperty:NSImageFrameCount] intValue];
	
		return (frameCount > 1);
	}
	else
	{
		return NO;
	}
}

@end
