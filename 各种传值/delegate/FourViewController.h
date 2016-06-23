//
//  FourViewController.h
//  delegate
//
//  Created by 海波 on 16/5/17.
//  Copyright © 2016年 海波. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FourViewController;
typedef void(^blockTest)(NSString *str);
@protocol FourViewControllerDelegate <NSObject>

- (void)fourViewController:(FourViewController *)fourViewController four:(NSString *)four;

@end
@interface FourViewController : UIViewController
@property(nonatomic, assign) NSInteger index;
/** blcokTest */
@property(nonatomic, copy) blockTest blcokTestStr;
/** 属性说明 */
@property(nonatomic, weak) id<FourViewControllerDelegate> delegate;

- (void)fourViewControllerBlock:(blockTest)blockTest;
@end
