//
//  ViewController.m
//  objc-io-issue-15-ux-testing
//
//  Created by Klaas Pieter Annema on 15/07/14.
//  Copyright (c) 2014 Klaas Pieter Annema. All rights reserved.
//

#import "ViewController.h"

#import "UIStoryboard+KPAConvenience.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    return [tableView dequeueReusableCellWithIdentifier:@"Cell"];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    [self performSegueWithIdentifier:@"TableViewPushSegue" sender:self];
}

@end
