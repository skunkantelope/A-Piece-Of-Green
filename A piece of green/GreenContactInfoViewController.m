//
//  GreenContactInfoViewController.m
//  A piece of green
//
//  Created by Qian Wang on 4/22/14.
//  Copyright (c) 2014 Kelly Kahuna Imagery. All rights reserved.
//

#import "GreenContactInfoViewController.h"
#import "GreenContentViewController.h"

@interface GreenContactInfoViewController ()

@end

@implementation GreenContactInfoViewController

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

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    // Return the number of rows in the section.
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    
    switch (indexPath.row) {
        case 0:
            cell = [tableView dequeueReusableCellWithIdentifier:@"FirstCell" forIndexPath:indexPath];
            break;
        case 1:
            cell = [tableView dequeueReusableCellWithIdentifier:@"LastCell" forIndexPath:indexPath];
            break;
        case 2:
            cell = [tableView dequeueReusableCellWithIdentifier:@"PhoneCell" forIndexPath:indexPath];
        default:
            cell = [tableView dequeueReusableCellWithIdentifier:@"EmailCell" forIndexPath:indexPath];
            break;
    }

    return cell;
}

- (UIImage *)snapShot {
    UIGraphicsBeginImageContext(self.view.frame.size);
    [self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier isEqualToString:@"ToContact"]) {
        GreenContentViewController *viewController = [segue destinationViewController];
        viewController.previousScreen = [self snapShot];
    }
}

@end
