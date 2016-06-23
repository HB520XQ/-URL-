//
//  TowViewController.h
//  delegate
//
//  Created by 海波 on 16/5/17.
//  Copyright © 2016年 海波. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TowViewController;
@protocol TowViewControllerDelegate <NSObject>

- (void)towViewController:(TowViewController *)towViewController name:(NSString *)name;

@end
@interface TowViewController : UIViewController
/**  */
@property(nonatomic, assign) NSInteger index;
/** TowViewControllerDelegate */
@property(nonatomic, weak) id<TowViewControllerDelegate> delegate;
@end
