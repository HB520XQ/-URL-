//
//  OneView.m
//  delegate
//
//  Created by 海波 on 16/5/17.
//  Copyright © 2016年 海波. All rights reserved.
//

#import "OneView.h"
#import "TowViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"

@interface OneView ()<UITableViewDelegate, UITableViewDataSource, TowViewControllerDelegate>

@end
@implementation OneView
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor redColor];
        UITableView *table = [[UITableView alloc] initWithFrame:self.bounds style:UITableViewStylePlain];
        table.delegate = self;
        table.dataSource = self;
        [self addSubview:table];
    }
    return self;
}

- (void)layoutSubviews
{
	[super layoutSubviews];
	UINavigationController *nav = (UINavigationController *)[UIApplication sharedApplication].keyWindow.rootViewController;
	nav.title = self.name;
}
- (void)setName:(NSString *)name
{
    _name = name;
}
- (void)towViewController:(TowViewController *)towViewController name:(NSString *)name
{
    self.name = name;
    NSLog(@"name%@", self.name);
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 30;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%@%ld",self.name,(long)indexPath.row];
   
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"tableView%@", self.name);
    switch (indexPath.row) {
        case 0:
        {
            TowViewController *tow = [[TowViewController alloc] init];
            tow.index = 4;
//            tow.delegate = self;
            UINavigationController *nav = (UINavigationController *)[UIApplication sharedApplication].keyWindow.rootViewController;
            [nav pushViewController:tow animated:YES];
        }
            break;
        case 1:
        {
            ThreeViewController *three = [[ThreeViewController alloc] init];
            three.index = indexPath.row;
            UINavigationController *nav = (UINavigationController *)[UIApplication sharedApplication].keyWindow.rootViewController;
            [nav pushViewController:three animated:YES];
        }
            break;
        case 2:
        {
            FourViewController *four = [[FourViewController alloc] init];
            four.index = indexPath.row;
            UINavigationController *nav = (UINavigationController *)[UIApplication sharedApplication].keyWindow.rootViewController;
            [nav pushViewController:four animated:YES];
        }
            break;
        case 3:
        {
            TowViewController *tow = [[TowViewController alloc] init];
            
            UINavigationController *nav = (UINavigationController *)[UIApplication sharedApplication].keyWindow.rootViewController;
            [nav pushViewController:tow animated:YES];
        }
            break;
        default:
            break;
    }
}



@end
