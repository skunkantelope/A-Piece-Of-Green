//
//  GreenContentViewController.m
//  A piece of green
//
//  Created by Qian Wang on 4/22/14.
//  Copyright (c) 2014 Kelly Kahuna Imagery. All rights reserved.
//

#import "GreenContentViewController.h"

@interface GreenContentViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *previousView;


@end

@implementation GreenContentViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)viewDidAppear:(BOOL)animated {
 
    self.previousView.image = self.previousScreen;
    [self.view layoutSubviews];
    [super viewDidAppear:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

- (UIStoryboardSegue *)segueForUnwindingToViewController:(UIViewController *)toViewController fromViewController:(UIViewController *)fromViewController identifier:
    (NSString *)identifier {
    
    float dx = fromViewController.view.frame.size.width;
    float dy = fromViewController.view.frame.size.height *2 / 3;
    
    UIStoryboardSegue *segue = [UIStoryboardSegue segueWithIdentifier:identifier source:fromViewController destination:toViewController performHandler:^{
        // reverse the animation of BounceSegue
        [UIView animateWithDuration:0.6 delay:0.0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            fromViewController.view.transform = CGAffineTransformMakeScale(0.6, 0.6);
            fromViewController.view.center = CGPointMake(dx, dy);
        } completion:^(BOOL finished) {
            
            [toViewController dismissViewControllerAnimated:NO completion:NULL];
        }];
    }];
    
    return segue;
}

- (IBAction)unwindFromViewController:(UIStoryboardSegue *)sender {
    
}

@end
