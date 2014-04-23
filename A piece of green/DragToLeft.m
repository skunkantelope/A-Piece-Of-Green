//
//  DragToLeft.m
//  A piece of green
//
//  Created by Qian Wang on 4/22/14.
//  Copyright (c) 2014 Kelly Kahuna Imagery. All rights reserved.
//

#import "DragToLeft.h"

@implementation DragToLeft

- (void)perform {
    UIViewController *sourceViewController = self.sourceViewController;
    UIViewController *destinationViewController = self.destinationViewController;
    
    float dx = sourceViewController.view.frame.size.width *4/5;
    float dy = sourceViewController.view.frame.size.height *4/5;
    
    [UIView animateWithDuration:0.6 delay:0.0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        
        sourceViewController.view.transform = CGAffineTransformMakeScale(0.6, 0.6);
        sourceViewController.view.center = CGPointMake(-dx, -dy);
    } completion:^(BOOL finished) {
        
        [sourceViewController presentViewController:destinationViewController animated:NO completion:NULL];
    }];
}

@end
