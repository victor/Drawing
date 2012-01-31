//
//  TestView.m
//  Drawing
//
//  Created by Victor Jalencas on 30/01/12.
//  Copyright 2012 Victor Jalencas. All rights reserved.
//

#import "TestView.h"


@implementation TestView


- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code.
    }
    return self;
}


- (void)drawRect:(CGRect)rect
{
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	CGContextSetStrokeColorWithColor(context, [[UIColor blackColor] CGColor]);
	
	// rect on a point boundary. Theoretically sharp on all devices
	CGContextStrokeRectWithWidth(context, CGRectMake(50.0f, 50.0f, 100.0f, 10.0f), 1.0f);
	
	// rect on a point boundary with a half-point width. Theoretically 1-pixel thin on Retina Display
	CGContextStrokeRectWithWidth(context, CGRectMake(50.0f, 70.0f, 100.0f, 10.0f), 0.5f);
	
	// rect on a half point boundary. Theoretically only sharp on Retina Display
	CGContextStrokeRectWithWidth(context, CGRectMake(50.5f, 90.5f, 100.0f, 10.0f), 1.0f);
	
	// rect on a quarter point boundary, with half-point width. Theoretically blurry everywhere
	CGContextStrokeRectWithWidth(context, CGRectMake(50.75f, 110.75f, 100.0f, 10.0f), 0.5f);
	
	// A couple of blue rects next to red rects. Theoretically, the top ones should be sharper
	// on all devices and the bottom ones sharp only on Retina Display	
	CGContextSetStrokeColorWithColor(context, [[UIColor blueColor] CGColor]);

	CGContextStrokeRectWithWidth(context, CGRectMake(50.0f, 130.0f, 50.0f, 10.0f), 1.0f);
	CGContextStrokeRectWithWidth(context, CGRectMake(50.5f, 150.5f, 50.0f, 10.0f), 1.0f);
	
	CGContextSetStrokeColorWithColor(context, [[UIColor redColor] CGColor]);

	CGContextStrokeRectWithWidth(context, CGRectMake(101.0f, 130.0f, 50.0f, 10.0f), 1.0f);
	CGContextStrokeRectWithWidth(context, CGRectMake(101.5f, 150.5f, 50.0f, 10.0f), 1.0f);
	
}


- (void)dealloc {
    [super dealloc];
}


@end
