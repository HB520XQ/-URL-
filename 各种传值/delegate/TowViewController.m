//
//  TowViewController.m
//  delegate
//
//  Created by 海波 on 16/5/17.
//  Copyright © 2016年 海波. All rights reserved.
//

#import "TowViewController.h"

@interface TowViewController ()

@end

@implementation TowViewController

- (void)setIndex:(NSInteger)index
{
    _index = index;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"TowViewController%ld", (long)self.index);
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
   NSLog(@"TowViewController---%ld", (long)self.index);
}
- (IBAction)btn2:(UIButton *)sender {
    if ([_delegate respondsToSelector:@selector(towViewController:name:)]) {
        
        [_delegate towViewController:self name:@"hahaha"];
    }
    [self.navigationController popViewControllerAnimated:YES];
}

@end
