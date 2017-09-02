//
//  BaseView.h
//  FactoryHelper
//
//  Created by myios on 2017/7/22.
//  Copyright © 2017年 郑惠珠. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum {
    
    VIEW_EMPTY_NORMAL,
    VIEW_EMPTY_SHOWBUTTON,
    
}VIEW_EMPTYSTYLE;
@interface BaseView : UIView

/** 显示空白页面 */
- (void)showEmptyView:(UIView *)view emptyStyle:(VIEW_EMPTYSTYLE)emptyStyle;
/** 隐藏空白页面 */
- (void)hideEmptyView:(UIView *)view;

- (void)reloadEmptyViewData;
@end
