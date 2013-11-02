//
//  APPWeeklyBeer.m
//  Appsterdam
//
//  Created by Alessio Roberto on 17/10/13.
//  Copyright (c) 2013 Alessio Roberto. All rights reserved.
//

#import "APPWeeklyBeer.h"
#import "APPEventsMangment.h"
#import "APPEventViewController.h"

@interface APPWeeklyBeer ()

@end

@implementation APPWeeklyBeer

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    APPEventsMangment *managment = [[APPEventsMangment alloc] init];
    self.events = [managment getWeeklyBeerList];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    APPEventViewController *event = [segue destinationViewController];
    NSIndexPath *path = [self.tableView indexPathForSelectedRow];
    event.eventData = [self.events objectAtIndex:path.row];
    event.veespoToken = [[self.veespoTokens objectAtIndex:0] objectForKey:@"token"];
//    NSLog(@"%@", event.eventData);
}


@end
