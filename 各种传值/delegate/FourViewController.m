//
//  FourViewController.m
//  delegate
//
//  Created by 海波 on 16/5/17.
//  Copyright © 2016年 海波. All rights reserved.
//

#import "FourViewController.h"

@interface FourViewController ()

@end

@implementation FourViewController
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
    NSLog(@"FourViewController%ld", (long)self.index);
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"FourViewController---%ld", (long)self.index);
	
	self.blcokTestStr(@"blcokTestStr");
}
- (IBAction)btn4:(UIButton *)sender {
    if ([_delegate respondsToSelector:@selector(fourViewController:four:)]) {
        [_delegate fourViewController:self four:@"four"];
    }
	
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)fourViewControllerBlock:(blockTest)blockTest
{
	self.blcokTestStr = blockTest;
}

@end
