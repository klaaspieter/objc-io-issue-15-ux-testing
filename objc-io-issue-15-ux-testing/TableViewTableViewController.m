//
//  TableViewTableViewController.m
//  objc-io-issue-15-ux-testing
//
//  Created by Klaas Pieter Annema on 14/08/14.
//  Copyright (c) 2014 Klaas Pieter Annema. All rights reserved.
//

#import "TableViewTableViewController.h"

#import <KPAStoryboardConvenience/UIStoryboard+KPAConvenience.h>

#import "TableViewDetailViewController.h"

@interface TableViewTableViewController ()

@end

@implementation TableViewTableViewController

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    NSString *segueIdentifier = [UIStoryboard segueIdentifierForClass:[TableViewDetailViewController class]];
    [self performSegueWithIdentifier:segueIdentifier sender:nil];
}

@end
