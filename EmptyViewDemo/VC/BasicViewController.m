//
//  BasicViewController.m
//  EmptyViewDemo
//
//  Created by myios on 2017/9/2.
//  Copyright © 2017年 郑惠珠. All rights reserved.
//

#import "BasicViewController.h"
#import "EmptyView.h"
#define CustomColorWithHex(x) [UIColor colorWithHex:x]
@interface BasicViewController ()<EmptyViewDelegate>

@end

@implementation BasicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/** 显示空白页面 */
- (void)showEmptyView:(UIView *)view emptyStyle:(EMPTYSTYLE)emptyStyle{
    
    if (emptyStyle == EMPTY_SHOW_BUTTON) {
        //        [EmptyView showEmptyViewWithImage:[UIImage imageNamed:@"noNet"] withText:@"没有网络请刷新" withView:view];
        
        EmptyView *emptyView = [[EmptyView alloc] initWithFrame:view.frame];
        [emptyView showEmptyViewWithImage:[UIImage imageNamed:@"noNet"] withText:@"没有网络请刷新" withView:view];
        emptyView.delegate = self;
        [view addSubview:emptyView];
        
    } else if (emptyStyle == EMPTY_NORMAL) {
        
        [EmptyView showEmptyViewWithImage:[UIImage imageNamed:@"noData"] withText:@"暂无数据" withView:view];
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
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
