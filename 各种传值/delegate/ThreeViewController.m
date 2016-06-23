//
//  ThreeViewController.m
//  delegate
//
//  Created by 海波 on 16/5/17.
//  Copyright © 2016年 海波. All rights reserved.
//

#import "ThreeViewController.h"
#import "FourViewController.h"

@interface ThreeViewController ()<FourViewControllerDelegate>
/** NSString */
@property(nonatomic, strong) NSString *block;
@end

@implementation ThreeViewController
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
	NSLog(@"viewDidAppear-blockStr-%@", self.block);

}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
//    NSLog(@"ThreeViewController---%ld", (long)self.index);
//	NSLog(@"viewWillAppear--four%@", self.four);
	
	NSLog(@"viewWillAppear-blockStr-%@", self.block);
	
}
- (IBAction)btn3:(id)sender {
    FourViewController *four = [[FourViewController alloc] init];
    four.delegate = self;
	__weak typeof (self) weakSelf = self;
	[four fourViewControllerBlock:^(NSString *str) {
		__strong  __typeof (self) strongSelf = weakSelf;
		strongSelf.block = str;
	}];
    [self.navigationController pushViewController:four animated:YES];
}
- (void)fourViewController:(FourViewController *)fourViewController four:(NSString *)four
{
    self.four = four;
    
}

@end
