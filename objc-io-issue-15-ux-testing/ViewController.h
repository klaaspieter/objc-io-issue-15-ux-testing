//
//  ViewController.h
//  objc-io-issue-15-ux-testing
//
//  Created by Klaas Pieter Annema on 15/07/14.
//  Copyright (c) 2014 Klaas Pieter Annema. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *barButton;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

