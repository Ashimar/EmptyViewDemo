//
//  BasicViewController.h
//  EmptyViewDemo
//
//  Created by myios on 2017/9/2.
//  Copyright © 2017年 郑惠珠. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    
    EMPTY_NORMAL,
    EMPTY_SHOW_BUTTON,
    
}EMPTYSTYLE;

@interface BasicViewController : UIViewController

/** 显示空白页面 */
- (void)showEmptyView:(UIView *)view emptyStyle:(EMPTYSTYLE)emptyStyle;

/** 隐藏空白页面 */
- (void)hideEmptyView:(UIView *)view;

/** 刷新空白页面 */
- (void)reloadEmptyViewData ;

@end
