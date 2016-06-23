//
//  ViewController.m
//  delegate
//
//  Created by 海波 on 16/5/17.
//  Copyright © 2016年 海波. All rights reserved.
//

#import "ViewController.h"
#import "OneView.h"
#import "TowViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    OneView *one = [[OneView alloc] initWithFrame:self.view.bounds];
    
    [self.view addSubview:one];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
//    NSLog(@"TowViewController%ld", (long)self.index);
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
//    NSLog(@"TowViewController---%ld", (long)self.index);
}
@end
