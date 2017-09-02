//
//  BaseView.m
//  FactoryHelper
//
//  Created by myios on 2017/7/22.
//  Copyright © 2017年 郑惠珠. All rights reserved.
//

#import "BaseView.h"
#import "EmptyView.h"

@interface BaseView ()<EmptyViewDelegate>

@end

@implementation BaseView


/** 显示空白页面 */
- (void)showEmptyView:(UIView *)view emptyStyle:(VIEW_EMPTYSTYLE)emptyStyle{
    
    if (emptyStyle == VIEW_EMPTY_SHOWBUTTON) {
        //        [EmptyView showEmptyViewWithImage:[UIImage imageNamed:@"noNet"] withText:@"没有网络请刷新" withView:view];
        
        EmptyView *emptyView = [[EmptyView alloc] initWithFrame:view.frame];
        [emptyView showEmptyViewWithImage:[UIImage imageNamed:@"noNet"] withText:@"没有网络请刷新" withView:view];
        emptyView.delegate = self;
        [view addSubview:emptyView];
        
    } else if (emptyStyle == VIEW_EMPTY_NORMAL) {
        
        [EmptyView showEmptyViewWithImage:[UIImage imageNamed:@"noData"] withText:@"当前分站暂无数据" withView:view];
    }
}
/** 隐藏空白页面 */
- (void)hideEmptyView:(UIView *)view {
    
    [EmptyView hideEmptyView:view];
}

- (void)reloadData {
    
    [self reloadEmptyViewData];
}

- (void)reloadEmptyViewData {
    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
