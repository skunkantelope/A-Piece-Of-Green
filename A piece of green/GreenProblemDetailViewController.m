//
//  GreenProblemDetailViewController.m
//  A piece of green
//
//  Created by Qian Wang on 4/22/14.
//  Copyright (c) 2014 Kelly Kahuna Imagery. All rights reserved.
//

#import "GreenProblemDetailViewController.h"

@interface GreenProblemDetailViewController ()
- (IBAction)bringUpPage:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *page1;
@property (weak, nonatomic) IBOutlet UIView *page2;

@end

@implementation GreenProblemDetailViewController

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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)bringUpPage:(id)sender {
  /*  if ( ((UIPageControl *)sender).currentPage == 1) {
        self.page1.hidden = YES;
        self.page2.hidden = NO;
    } else {
        self.page1.hidden = NO;
        self.page2.hidden = YES;
    }
   */
    self.page1.hidden = !self.page1.hidden;
    self.page2.hidden = !self.page2.hidden;
}
@end
